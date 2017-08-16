=begin
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

=end

athletes = {
  "basketball"=> "jordan",
  "baseball"=> "ruth",
  "football"=> "payton"
}

athletes.each do |sport, player|
  puts "#{player} is really skillful at #{sport}, right?"
end
