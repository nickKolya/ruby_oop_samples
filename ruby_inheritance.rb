class Human
  def speak
    p 'I have ability to speak'
  end
end

class Person < Human
  # some code goes here
end

person = Person.new
# => #<Person:0x00007fe78d9a75f0>

person.speak
# => "I have ability to speak"

person.class.ancestors
# => [Person, Human, Object, Kernel, BasicObject]
