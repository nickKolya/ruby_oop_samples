class Student
  def method_missing(method_name, *args, &block)
    return super unless method_name == :say_hello

    p 'Hello, I am student!'
  end

  def respond_to?(method_name, include_private = false)
    method_name == :say_hello || super
  end
end

student = Student.new
# => #<Student:0x00007fd8dc0bc9c8>

student.say_hello
# "Hello, I am student!"
# => "Hello, I am student!"

student.woof
# Traceback (most recent call last):
#         3: from /Users/mykolakovalchuk/.rvm/rubies/ruby-2.5.1/bin/irb:11:in `<main>'
#         2: from (irb):16
#         1: from (irb):6:in `method_missing'
# NoMethodError (undefined method `woof' for #<Student:0x00007fd8dc0bc9c8>)

student.respond_to?(:say_hello)
# => true

student.respond_to?(:woof)
# => false
