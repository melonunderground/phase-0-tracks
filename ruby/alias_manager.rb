

get a spy's real first and last name. swap the first and last name so the first name is last and last name is first
seperate the letters of first and last name.
if a letter is a vowel convert it to the next vowel in the order aeiou
if a letter is a consonant convert it to the next consonant in the order bcdfghjklmnpqrstvwxz
create an interface that gets the spy's name and returns the new name with the tasks above processed on the name.
continue returning new names until the spy types quit.


def name_switch(name)
  new_name = name.split (' ')
  new_name.reverse!
  new_name_str = new_name.join(' ')
end

p name_switch("dane middleton")


def next_vowel(name)
  vowels = ["a", "e", "i", "o", "u"]
  name = name.split('')
  name.map! do |letter|
    if vowels.include?(letter)
      vowels.rotate(1)[vowels.index(letter)]
    else
      letter
    end
  end
  puts name.join.downcase
end

p next_vowel("dane middleton")


def consonant_adv(name)
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  name = name.split('')
  name.map! do |letter|
    if consonants.include?(letter)
      consonants.rotate(1)[consonants.index(letter)]
    else
      letter
    end
  end
  puts name.join.downcase
end

consonant_adv("dane middleton")



