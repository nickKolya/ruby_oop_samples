module Person
  def self.included(base)
    puts "#{base} included #{self}"
  end

  def name
    puts "My name is Person"
  end
end

class Student
  include Person
end
# => Student included Person

student = Student.new
# => #<Student:0x00007fd2a6832838>

student.name
# => My name is Person
