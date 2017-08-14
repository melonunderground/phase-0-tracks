



puts "what is your name?"
name = gets.chomp
puts "your name is #{name}."

puts "how old are you?"
age = gets.chomp.to_i
puts "you are #{age}."

puts "what year were you born?"
year_born = gets.chomp.to_i
puts "you were born in #{year_born}."

valid_input = false

until valid_input

  puts "should we order you garlic bread? (y/n)"
  input = gets.chomp

  if input == "y"
  wants_garlic_bread = true
  valid_input = true
  puts "ok, we will order you garlic bread."
  elsif input == "n"
  wants_garlic_bread = false
  valid_input = true
  puts "ok, no garlic bread."
  else
  puts "please enter a y/n response."
  end

end

valid_input = false

until valid_input

  puts "would you like health insurance? (y/n)?"
  input = gets.chomp

  if input == "y"
  wants_health_insurance = true
  valid_input = true
  puts "ok, we will get you health insurance."
  elsif input == "n"
  wants_health_insurance = false
  valid_input = true
  puts "ok, we will not get you health insurance."
  else
  puts "please enter a y/n response"
  end

end
