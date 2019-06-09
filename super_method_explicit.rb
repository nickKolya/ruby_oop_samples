class Human
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Student < Human
  attr_reader :study_place

  def initialize(name, study_place)
    super(name)

    @study_place = study_place
  end
end

student = Student.new('Alex', '#Pivorak Summer Course')
# => #<Student:0x00007f937086c468 @name="Alex", \
#    @study_place="#Pivorak Summer Course">

student.name
# => "Alex"

student.study_place
# => "#Pivorak Summer Course"


# ===========================================================

class Human
  def say_hello
    p 'Hello from Human!'
  end
end

class Student < Human
  def say_hello(name)
    super()

    p "My name is #{name}"
  end
end

Student.new.say_hello('Alex')
# => "Hello from Human!"
# => "My name is Alex"
