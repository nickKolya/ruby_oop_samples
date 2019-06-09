class Human
  protected

  def greet_friend
    p 'Hey, my friend'
  end

  private

  def speak
    p 'Hey, I have ability to speak'
  end
end

class Person < Human
  def be_nice
    self.greet_friend
  end

  def be_nice_again
    Human.new.greet_friend
  end
end

Person.new.be_nice
# => "Hey, my friend"

Person.new.be_nice_again
# => "Hey, my friend"

# --------------------------------------------------

class Person < Human
  def be_nice
    self.speak
  end

  def be_nice_again
    Human.new.speak
  end
end

Person.new.be_nice
# => NoMethodError (private method `speak'
#    called for #<Person:0x00007fc9e583f7c8>)

Person.new.be_nice_again
# => NoMethodError (private method `speak'
#    called for #<Human:0x00007fc9e78b3338>)
