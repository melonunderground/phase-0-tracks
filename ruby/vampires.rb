puts "how many employees will be processed?"
processed_employees = gets.chomp.to_i

processed_employees.times do

puts "what is your name?"
name = gets.chomp

puts "how old are you?"
age = gets.chomp.to_i

puts "what year were you born?"
year_born = gets.chomp.to_i

current_year = age + year_born

puts "should we order you garlic bread (y/n)?"
garlic_bread = gets.chomp

if garlic_bread == "y"
   garlic = true
else
  garlic = false
end

puts "would you like health insurance (y/n)?"
want_insurance = gets.chomp

if want_insurance == "y"
   insurance = true
else
  insurance = false
end

puts "please list any allergies one at a time and type 'done' when finished"

valid_input = false

until valid_input

allergy = gets.chomp

if allergy == "done"
  puts "thank you"
  valid_input = true

elsif
  allergy == "sunshine"
valid_input = true
puts "probably a vampire"

else
  puts "any more allergies, type 'done' when finished"
end

end

if name == "Drake Cula" || name == "Tu Fang"
  puts "definitely a vampire"
#anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”#

elsif
  current_year == 2017 && (garlic || insurance)
  puts "probably not a vampire"
#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”#

elsif
  (current_year != 2017 && !garlic_bread) || !insurance
  puts "probably a vampire"
  #If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”#

elsif
  (current_year != 2017) && (!garlic) && (!insurance)
  puts "almost certainly a vampire"
  #If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”#

else
  puts "results inconclusive."
#Otherwise, print “Results inconclusive.”#

end

end
puts "actually, never mind! what do these questions have to do with anything? let's all be friends."
