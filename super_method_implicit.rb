class Human
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Student < Human
  attr_reader :study_place

  def initialize(name, study_place)
    super

    @study_place = study_place
  end
end

student = Student.new('Alex', '#Pivorak Summer Course')
# => ArgumentError (wrong number of arguments (given 2, expected 1))
