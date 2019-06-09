require 'time'

module AgeNormalizer
  def calculate_age(birthdate)
    Time.now.year - birthdate.year
  end
end

class User
  include AgeNormalizer

  attr_reader :birthdate

  def initialize(birthdate)
    @birthdate = birthdate
  end

  def age
    calculate_age(birthdate)
  end
end

module Admin
  class User
    include AgeNormalizer

    attr_reader :birthdate

    def initialize(birthdate)
      @birthdate = birthdate
    end

    def age
      calculate_age(birthdate)
    end
  end
end

date = Time.strptime('2010-10-31', '%Y-%m-%d')
# => 2010-10-31 00:00:00 +0300

date1 = Time.strptime('2000-10-31', '%Y-%m-%d')
# => 2000-10-31 00:00:00 +0200

user = User.new(date)
# => #<User:0x00007fb47b062ca0 @birthdate=2010-10-31 00:00:00 +0300>

admin = Admin::User.new(date1)
# => #<Admin::User:0x00007fb47c971e08 @birthdate=2000-10-31 00:00:00 +0200>

user.age
# => 9

admin.age
# => 19
