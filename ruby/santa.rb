class Santa
attr_reader :ethnicity, :hometown, :name
attr_accessor :age, :gender
  def initialize (name, gender, ethnicity, hometown, age)
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

  def celebrate_birthday
  puts "now santa is "
  puts "#{@age}".to_i + 1
  puts "years old"
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

  def reindeer_ranking
    @reindeer_ranking
  end
end

santas = []
name = ["jeff","angela","mike","rick","sarah","belinda","maggie"]
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
hometown = ["ogdenville","haberbrook","shelbyville","detroit", "chicago","richland","brookville"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
age = 0

gender.length.times do |i|
  santas << Santa.new(name[i],gender[i], ethnicity[i], hometown[i], age[i])
end

santas.each do |santa|
santa.welcome
end

santas.each do |santa|
santa.speak
end

santas.each do |santa|
santa.celebrate_birthday
end

santas[0].get_mad_at("Dasher")

p santas[0].reindeer_ranking

santas[0].gender = "not available"

santas[0].age

100.times do |santa| Santa.new(name.sample,gender.sample,ethnicity.sample,hometown.sample,age)
end

p santas
