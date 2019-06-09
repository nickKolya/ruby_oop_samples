class Human
  def speak
    p 'I have aility to speak'
  end
end

class Person < Human
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def speak
    p "Hey! My name is #{name}"
  end
end

class Student < Person
  attr_reader :study_place

  def initialize(name, study_place)
    @study_place = study_place

    super(name)
  end

  def speak
    super

    p "I am studying at #{study_place}"
  end
end
