require 'time'

module AgeNormalizer
  def calculate_age(birthdate)
    p 'Method called from AgeNormalizer'
  end
end

module AgeValidator
  def calculate_age(birthdate)
    p 'Method called from AgeValidator'
  end
end

class User
  include AgeNormalizer
  include AgeValidator

  attr_reader :birthdate

  def initialize(birthdate)
    @birthdate = birthdate
  end

  def age
    calculate_age(birthdate)
  end
end

date = Time.strptime('2010-10-31', '%Y-%m-%d')
# => 2010-10-31 00:00:00 +0300
user = User.new(date)
# => #<User:0x00007fa795122610 @birthdate=2010-10-31 00:00:00 +0300>
user.age
# => "Method called from AgeValidator"

User.ancestors
# => [User, AgeValidator, AgeNormalizer, Object, Kernel, BasicObject]
