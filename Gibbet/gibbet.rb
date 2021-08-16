class Gibbet
  attr_accessor :word, :health, :current_letters
  def initialize(word)
    @word = word #word to guess
    @health = 6
    @current_letters = "" #not guessed characters are '*'

    @word.each_char do |ch|
      @current_letters += '*' #all letters are hidden
    end
  end

  def next_step(letter)
    guessed = false

    @word.each_char.with_index{|ch, i|
      if @word[i] == (letter)
        @current_letters[i] = letter #if the user guessed the letter, open the letter
        guessed = true
      end
    }

    @health -= 1

    return (@health > 0 && @current_letters.count('*') > 0)

    #if !guessed
    #  @health -= 1
    #  puts "Wrong letter"
    #else
    #  puts "Yes! This letter is correct."
    #end
  end
  
end