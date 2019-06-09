def generic_method(args)
  puts args[:a]
  puts args[:b]
end

generic_method(a: 1, b: 2)
#=> 1
#=> 2

def generic_method(a, args)
  puts a
  puts args
end

generic_method(1, b: 2, c: 3)
#=> 1
#=> {b: 2, c: 3}

def generic_method(a, args = {})
  defaults = {b: 2, c: 3}
  args = defaults.merge(args)
  puts a
  puts args
end

generic_method(1)
#=> 1
#=> {b: 2, c: 3}
