def calculator(a, operation, b)
  a.send(operation, b)
end

p calculator(4, '+', 5)

p calculator(4, "-", 5)

p calculator(4, '/', 5)

p calculator(4, '*', 5)
