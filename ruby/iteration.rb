def insulter
  puts "hey you, what are you looking at!?"
  yield("boring","lazy")
  puts "see you around pal"
end

insulter { |insult1, insult2| puts "no offense but you are #{insult1} and #{insult2}" }

#.each call
sporting_equipment = ["homeplate","puck","hoop"]

puts "Original data:"
p sporting_equipment

sporting_equipment.each do |equipment|
  puts equipment
end

puts "After .each call:"
p sporting_equipment

#.map! call
sporting_equipment = ["homeplate","puck","hoop"]

puts "Original data:"
p sporting_equipment

sporting_equipment.map! do |equipment|
  puts equipment
  equipment.upcase
end

puts "After .map! call:"
p sporting_equipment



athletes = {
  "basketball"=> "jordan",
  "baseball"=> "ruth",
  "football"=> "payton"
}

athletes.each do |sport, player|
  puts "#{player} is really skillful at #{sport}, right?"
end


letters = ["a","b","c","d","e","f","g","h"]
#.delete_if call
puts "Original data:"
puts letters

letters.delete_if {|letter| letter < "d"}

puts "After .delete_if call"
puts letters

letters = ["a","b","c","d","e","f","g","h"]

#.keep_if call
puts "Original data:"
puts letters

letters.keep_if { |letter| letter < "d"}

puts "After .keep_if call"
puts letters


letters = ["a","b","c","d","e","f","g","h"]

#.select call
puts "Original data:"
puts letters

modified_letters = letters.select { |letter| letter > "b"}

puts "After .select() call"
p modified_letters



numbers = [1, 2, 3, 4, 5, 6, 7, 8]

#.take_while call

puts "Original data:"
puts numbers

modified_numbers = numbers.take_while { |number| number < 3 }

puts "After .take_while call"
puts modified_numbers


#.delete_if hash call

numbers = { 1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight'}

numbers.delete_if {|digit, word| digit <= 4}

puts numbers

#.keep_if hash call

numbers = {1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight'}

numbers.keep_if {|digit, word| word.length > 3}

puts numbers

#.reject hash call
numbers = {1=> 'one', 2=> 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight'}

modified =numbers.reject {|digit, word| digit > 2}

puts modified

#.reject until false hash call

numbers = {1 => 'one', 2 => 'two', 3=> 'three', 4=> 'four', 5=> 'five', 6=> 'six', 7=> 'seven', 8=> 'eight'}

modified = numbers.reject{|digit, word| word != "eight"}

puts modified
