module CustomMath
  def pow(number, power)
    number ** power
  end

  def mod(number, divider)
    number % divider
  end
end

class Calculator
  extend CustomMath
end

Calculator.pow(2, 3)
# => 8

Calculator.mod(7, 3)
# => 1


 Calculator.ancestors
 # => [Calculator, Object, Kernel, BasicObject]
