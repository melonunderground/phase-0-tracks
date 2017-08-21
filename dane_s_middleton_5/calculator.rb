def calculator(a, operation, b)
  a.send(operation, b)
end

p calculator(4, '+', 5)

p calculator(4, "-", 5)

p calculator(4, '/', 5)

p calculator(4, '*', 5)
puts "welcome to the calculator"
loop do
puts "please enter the first number you want to use in your calculation"
int_1 = gets.chomp.to_i
puts "please enter the operation you would like to calculate (+, -, *, or /)"
operation = gets.chomp.to_s
puts "please enter the second number you want to use in your calculation"
int_2 = gets.chomp.to_i
p calculator(int_1,operation,int_2)
puts "would you like to enter another number and operation combo? to exit type 'done'"
reply = gets.chomp
  if reply == "done"
  break
  end
end