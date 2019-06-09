def generic_method(*args)
  p args
end

generic_method(1, 2, 3)
# => [1, 2, 3]

def generic_method(a, b, c, *d)
  p [a, b, c]
  p d
end

generic_method(1, 2, 3, 4, 5, 6)
# => [1, 2, 3]
# => [4, 5, 6]

def generic_method(a, b, c = 'default', *d, e)
  p [a, b, c]
  p d
  p e
end

generic_method(1, 2, 3)
# => [1, 2, "default"]
# => []
# => 3
