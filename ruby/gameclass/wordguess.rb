#game class

class WordGuess
attr_accessor  :word, :letter_guess, :answer, :guess_arr
attr_reader  :guess_count, :word_arr

def initialize
  @word
  @word_arr
  @guess_arr
  @answer
  @letter_guess
  @guess_count = 0
end

def guess
  @word = gets.chomp.downcase
  @word_arr = word.split('')
  @answer = " _ " * @word.length
  @word_arr.each_with_index do |word_letters, index|
    if @letter_guess == word_letters
      @answer[index] = @letter_guess
      p @answer
    end
  end
    p "the word is #{@word.length} characters"
    p "user two you have three guesses for each letter"
    while @guess_count < @word.length * 3
      p "guess a letter"
        @letter_guess = gets.chomp.downcase
        @guess_arr = []
        @guess_arr<<@letter_guess
      if @word_arr.include?(letter_guess)
        puts "correct, #{@letter_guess} is in the word"
    # elsif @guess_arr.include?@letter_guess
    #   puts "you already guessed that letter, try again"
      else
        puts "no, #{@letter_guess} is not in the word"
        @guess_count += 1

    end
    p "#{@guess_count} guesses"

  end

end
end


#driver code
puts "Welcome to the Word Guess game!"
puts "-------------------------------"
puts "user one enter a word"
game = WordGuess.new.guess