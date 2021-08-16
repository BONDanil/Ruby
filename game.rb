class Game
  def initialize(word)
    @word = word #word to guess
    @health = 6
    @current_letters = "" #not guessed characters are '*'

    @word.each_char do |ch|
      @current_letters += '*' #all letters are hidden
    end
  end

  def check(letter) #the method checks if the user guessed the letter
    guessed = false

    for i in (0..@word.length)
      if @word[i] == (letter)
        @current_letters[i] = letter #if the user guessed the letter, open the letter
        guessed = true
      end
    end

    if !guessed
      @health -= 1
      puts "Wrong letter"
    else
      puts "Yes! This letter is correct."
    end
  end
  

  def start
    while @current_letters.count('*') != 0 && @health > 0 do
      puts "Current status: #{@current_letters}"
      puts "You have #{@health} attempt(s)."
      puts "Enter letter:"
      input = gets.chomp
      puts
      check(input)
      puts
    end

    if @current_letters.count('*') != 0
      puts "Game over :("
    else
      puts "Congratulations! The word was \"#{@word}\""
    end
  end
end

newGame = Game.new("Ruby")
newGame.start