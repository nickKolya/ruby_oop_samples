[1, 2, 3].inject { |res, num| res += num }
# => 6

[1, 2, 3].inject do |res, num|
  res += num
end
# => 6

sum_proc = Proc.new { |res, num| res += num }
# => #<Proc:0x00007ff4ee90def0@(pry):1>
[1, 2, 3].inject(&sum_proc)
# => 6

hello_proc = proc { |name| p "My name is #{name}" }
# => #<Proc:0x00007ff4ee8ac650@(pry):2>
hello_proc.call('#Pivorak Student')
# => "My name is #Pivorak Student"

sum_lam = lambda { |res, num| res += num }
# => #<Proc:0x00007ff4eefd3208@(pry):3 (lambda)>
[1, 2, 3].inject(&sum_lam)
# => 6

hello_lam = -> (name) { p "My name is #{name}" }
#=> #<Proc:0x00007ff4f0b305a0@(pry):7 (lambda)>
hello_lam.call('#Pivorak Student')
# => "My name is #Pivorak Student"
