class Human
  def greet_students
    p 'Hey, #Pivorak Students!'
  end

  protected

  def greet_friend
    p 'Hey, my friend'
  end
end

class Person < Human
  def be_nice
    greet_friend
  end
end

Human.new.greet_friend
# => NoMethodError (protected method `greet_friend' called for
     #<Human:0x00007fd37e8399e8>

Person.new.be_nice
# => "Hey, my friend"
