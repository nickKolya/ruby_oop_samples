class Human
  def greet_students
    p 'Hey, #Pivorak Students!'
  end

  private

  def speak
    p 'Hey, I have ability to speak'
  end
end

class Person < Human
  def be_nice
    speak
  end
end

Human.new.speak
# => NoMethodError (private method `speak'called for
     #<Human:0x00007fb4d1095870>)


Person.new.be_nice
# => "Hey, I have ability to speak"
