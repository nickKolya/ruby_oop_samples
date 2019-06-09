class Person
  def initialize(name)
    @name = name
  end

  def say_name
    p "Hi, my name is '#{@name}'"
  end
end

ruby_guy = Person.new('Ruby Guy')
# => #<Person:0x00007fa6379f5e18 @name="Ruby Guy">

ruby_guy.say_name
# => "Hi, my name is 'Ruby Guy'"
