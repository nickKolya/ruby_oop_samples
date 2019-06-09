class Person
  LANGUAGES = ['ukrainian', 'english']

  @@legal_age = 18

  def initialize(name)
    @name = name
  end

  def legal_age
    @@legal_age
  end

  def name
    @name
  end
end

person = Person.new('Ruby Guy')
# => #<Person:0x00007fa6379f5e18 @name="Ruby Guy">

Person::LANGUAGES
# => ["ukrainian", "english"]

person.legal_age
# => 18

person.name
# => "Ruby Guy"
