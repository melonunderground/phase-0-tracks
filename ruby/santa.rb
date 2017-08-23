class Santa

  def initialize (name, gender, ethnicity, hometown)
    puts "Initializing Santa instance..."
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @hometown = hometown
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def welcome
  puts "my name is #{@name} and i traveled here from #{@hometown}"
  end

end

santas = []
name = ["jeff","angela","mike","rick","sarah","belinda","maggie"]
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
hometown = ["ogdenville","haberbrook","shelbyville","detroit", "chicago","richland","brookville"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
gender.length.times do |i|
  santas << Santa.new(name[i],gender[i], ethnicity[i], hometown[i])
end
santas.each do |santa|
santa.welcome
end










