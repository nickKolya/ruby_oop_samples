class Human
  def speak
    p 'I have ability to speak'
  end
end

class Person < Human
  def initialize(name)
    @name = name
  end

  def speak
    p "Hey! My name is #{@name}"
    super
  end
end

class Student < Person
  def initialize(name, study_place)
    @study_place = study_place

    super(name)
  end

  def speak
    super

    p "I am studying at '#{@study_place}'"
  end
end

Human.new.speak
# => "I have ability to speak"

Person.new('Mykola').speak
# "Hey! My name is Mykola"
# "I have ability to speak"

Student.new('Mykola', '#Pivorak Ruby Summer Course 2019').speak
# "Hey! My name is Mykola"
# "I have ability to speak"
# "I am studying at #Pivorak Ruby Summer Course 2019"

