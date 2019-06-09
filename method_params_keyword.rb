def generic_method(a: 1, b: 2)
  puts a
  puts b
end

generic_method(a: 1)
# => 1
# => 2

def generic_method(a: 1, b: nil)
  puts a
  puts b
end

generic_method(a: 1)
# => 1

def generic_method(a, b: 2, c: 3)
  puts a
  puts b
  puts c
end

generic_method(1, b: 2, c: 3)
# => 1
# => 2
# => 3

def generic_method(b: 2, c: 3, **args)
  puts b
  puts c
  puts args
end

generic_method(a: 1, b: 2, c: 3, d: 4)
# => 2
# => 3
# => {a: 1, d: 4}
