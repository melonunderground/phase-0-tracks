#Create program with form for interior designers to record specific details for individual clients. Request details and update input to the correct data type. Once form is filled out display client's input for review and offer client a chance to edit any input before final submission. Once edits are made or if the client confirms they have no updates by entering "none" display final input and exit.#
interior = {
  name: "",
  age: "",
  sex: "",
  location:"",
  favorite_color: "",
  design_theme: "",
  number_of_rooms:"",
  basement: ""

}
puts "welcome to the interior design survey"
puts "please enter your information below"
loop do
puts "name"
interior[:name] = gets.chomp
puts "age"
interior[:age] = gets.chomp.to_i
puts "sex"
interior[:sex] = gets.chomp
puts "location"
interior[:location] = gets.chomp
puts "favorite color"
interior[:favorite_color] = gets.chomp
puts "design theme"
interior[:design_theme] = gets.chomp
puts "number of rooms"
interior[:number_of_rooms] = gets.chomp.to_i
puts "do you have a basement?"
interior[:basement] = gets.chomp
p interior
puts "any changes to the information below? enter 'none' to submit"
reply = gets.chomp
if reply == "none"
  break
else
  puts "what would you like to change?"
  key_to_change = gets.chomp.to_sym
  puts "what should this be?"
  new_value = gets.chomp
  interior[key_to_change] = new_value
end
p interior
end
