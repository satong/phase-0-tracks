# To determine if user 2 guess is correct
  # Create input array with each letter of given word
  # Create guess array with "-" for each letter of given word
  # For each letter that user 2 guesses, check if the letter matches each of the letter in the input array.
  # Where there is a match, update the guess array with the letter in the corresponding place
  # If there is no match, ask user 2 for next guess
  # Repeat until the number of guesses equals the length of the input word
  # Ensure that only unique letters are counted as guesses

# Class declaration
class Hangman
  attr_reader :guess_array, :word, :word_array, :allowed_guesses

  def initialize(word)
    @word = word
    @word_array = word.split("")
    @guess_array = []
    word.length.times do
      @guess_array << "-"
    end
    @guess_count = 0
    @allowed_guesses = word.length
    @letters_guessed =[]
  end

  def check_word(letter)
    # To ensure repeated guesses do not count against player
    if !@letters_guessed.include?(letter)
      @word_array.each_with_index do |x, idx|
        @guess_array[idx] = letter if x == letter
      end
      @letters_guessed << letter
      @guess_count += 1
    end
    @guess_array
    # To provide feedback on each guess provided
    p @guess_array.join
    p "You have made #{@guess_count}/#{@allowed_guesses} guesses."
  end

  def is_over
    !@guess_array.include?("-") || @guess_count >= @allowed_guesses # limits guesses
  end

end

# Driver code
p "Welcome to Hangman!"
p "Player 1 please enter a word:"
word = gets.chomp.downcase
game = Hangman.new(word)

while !game.is_over
  p "Player 2 please guess a letter for the mystery word: #{game.guess_array.join}."
  letter = gets.chomp.downcase
  game.check_word(letter)
end

# Parting message for whether game was won or lost
if game.is_over && game.guess_array.include?("-")
  p "You failed to guess '#{game.word}'?! That's so lame"
else
  p "Nice! You guessed '#{game.word}'!"
end
