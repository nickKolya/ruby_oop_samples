lam_greeter = ->(name) { p "Hello, #{name}" }
# => #<Proc:0x00007f864199a178@(irb):22 (lambda)>

lam_greeter.call('#Pivorak Student')
# => "Hello, #Pivorak Student"

lam_greeter.call
# => ArgumentError (wrong number of arguments (given 0, expected 1))

lam_greeter.call('#Pivorak Student', 18)
# => ArgumentError (wrong number of arguments (given 2, expected 1))

# ==================================================================

proc_greeter = proc { |name| p "Hello, #{name}" }
# => #<Proc:0x00007f8641a60bc0@(irb):26>

proc_greeter.call('#Pivorak Student')
# => "Hello, #Pivorak Student"

proc_greeter.call
# => "Hello, "

proc_greeter.call('#Pivorak Student', 18)
# => "Hello, #Pivorak Student"

# ==================================================================

def lambda_greeter
  brake = -> { return }
  p 'Hello, #Pivorak Student'
  brake.call
  p 'You will be professional soon'
end

lambda_greeter
# => "Hello, #Pivorak Student"
# => "You will be professional soon"

# ==================================================================

def proc_greeter
  brake = proc { return }
  p 'Hello, #Pivorak Student'
  brake.call
  p 'You will be professional soon'
end

proc_greeter
# => "Hello, #Pivorak Student"
