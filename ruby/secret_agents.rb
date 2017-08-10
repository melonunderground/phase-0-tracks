#find letter that comes after each letter in string
 # replace each letter with proceeding letter in alphabet

def encrypt(word)
  encrypt_word = ""
  index = 0
  while index < word.length
    if word[index] == "z"
      encrypt_word += "a"
      index += 1
    else
      encrypt_word += word[index].next
      index += 1
    end
  end
  p encrypt_word
end


"agent".index("a")

#find letter that comes before each letter in string
# replace each letter with previous letter in alphabet

def decrypt(word)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  decrypt_word = ""
  index = 0
  while index < word.length
    decrypt_word += alphabet[alphabet.index(word[index]) - 1]
    index += 1

  end
  p decrypt_word
end

puts "Would you like to decrypt or encrypt a password?"
password_decision = gets.chomp

puts "What's your password?"
password = gets.chomp

if password_decision == "decrypt"
  decrypt(password)
end

if password_decision == "encrypt"
  encrypt(password)
end


#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))

#The encrypt method produces a string, and the decrypt method calls for a string.