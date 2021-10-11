def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def sum(arr) 
  calculator = 0
  arr.each {|item| calculator = calculator + item }
  return calculator
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def power(num_1, num_2)
  return num_1 ** num_2
end

def factorial(num)
  (2..num).reduce(1,:*)
end 