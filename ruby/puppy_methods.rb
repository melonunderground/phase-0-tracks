class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    puts "woof!" * x
  end

  def roll_over
    puts "roll over"
  end

  def dog_years(x)
    x * 7
  end

  def hand_shake
    puts "shake"
  end

  def initialize
    puts "initializing new puppy instance"
  end

end

rover = Puppy.new
p rover.fetch("toy")
p rover.speak(3)
p rover.roll_over
p rover.dog_years(4)
p rover.hand_shake

class Athlete

  def initialize
    puts "initializing new athlete instance"
  end

  def run(n)
    puts "run #{n} miles"
  end

  def jumping_jacks(n)
    puts "do #{n} jumping jacks"
  end


end
john = Athlete.new
p john.run(3)
p john.jumping_jacks(40)

athlete_array = []

50.times do person = Athlete.new
athlete_array << person
end
athlete_array.each do |person|
  puts person.run(2)
end
athlete_array.each do |person|
  puts person.jumping_jacks(2)
end

#p athlete_array
