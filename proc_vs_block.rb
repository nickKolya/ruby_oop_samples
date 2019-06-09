hello_proc = proc { p 'Hello #Pivorak Community' }
# => #<Proc:0x00007ff4f40d4508@(pry):9>

hello_proc.call
# => "Hello #Pivorak Community"

hello_proc.class
# => Proc

# =================================================

{ p 'Hello #Pivorak Community' }
# => SyntaxError

hello_block = { p 'Hello #Pivorak Community' }
# => SyntaxError

2.times { p 'Hello #Pivorak Community' }
# => "Hello #Pivorak Community"
# => "Hello #Pivorak Community"

# =================================================

def greeter(&block)
  if block_given?
    block.call('#Pivorak Student')
  else
    p 'Hey, hey 👋'
  end
end

greeter do |name|
  p "Hello, #{name}"
end
# => "Hello, #Pivorak Student"

greeter
# => "Hey, hey 👋"

# =================================================

def greeter(stud, rbyist)
  stud.call
  rbyist.call
end

student = proc { p "Hello, Student" }
rubyist = proc { p "Hello, Rubyist" }

greeter(student, rubyist)
# => "Hello, Student"
# => "Hello, Rubyist"
