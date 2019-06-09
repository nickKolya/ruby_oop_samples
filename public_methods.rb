class Human
  def greet_students
    p 'Hey, #Pivorak Students!'
  end
end

class Person < Human
  def be_nice
    greet_students
  end
end

Human.new.greet_students
# => "Hey, #Pivorak Students!"

Person.new.be_nice
# => "Hey, #Pivorak Students!"
