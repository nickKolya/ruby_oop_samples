def generic_method(a, b, c)
  p [a, b, c]
end

generic_method(1, 2, 3)
# => [1, 2, 3]

generic_method(1, 2)
# => ArgumentError (wrong number of arguments (given 2, expected 3))

def generic_method(a = 4, b = 5, c = 6)
  p [a, b, c]
end

generic_method(1, 2)
# => [1, 2, 6]
