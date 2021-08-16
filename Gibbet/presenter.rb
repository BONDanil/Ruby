class Presenter
  def draw(gibbet)
    puts "Current status: #{gibbet.current_letters}"
    puts "You have #{gibbet.health} attempt(s)."
    puts "Enter letter:"
    return gets.chomp
  end

  def end(gibbet)
    if gibbet.current_letters.count('*') != 0
      puts "Game over :("
    else
      puts "Congratulations! The word was \"#{gibbet.word}\""
    end
  end
end
