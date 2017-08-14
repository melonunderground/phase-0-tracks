puts "what is your name?"
name = gets.chomp

puts "how old are you?"
age = gets.chomp

puts "what year were you born?"
year_born = gets.chomp

puts "should we order you garlic bread (y/n)?"
wants_garlic_bread = gets.chomp

puts "would you like health insurance (y/n)?"
wants_insurance = gets.chomp

current_year = 2017
correct_age = age.to_i + year_born.to_i

if
  wants_garlic_bread == "y"
  wants_garlic_bread = true
else
  wants_garlic_bread = false
end

if
  wants_insurance == "y"
  wants_insurance = true
else
  wants_insurance = false
end

if correct_age && (wants_garlic_bread || wants_insurance)
  puts "probably not a vampire"
end

if (!correct_age) && (!wants_garlic bread) || (!wants_insurance)
  puts "probably a vampire"
end

if (!correct_age) && (!wants_garlic bread) && (!wants_insurance)
  puts "almost certainly a vampire"
end

if name == "Drake Cula" || "Tu Fang"
  puts "definitely a vampire"
else
  puts "results inconclusive."
end







