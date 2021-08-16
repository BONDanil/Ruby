class Game
  def start
    require_relative './gibbet.rb'
    @gibbet = Gibbet.new("Rubyb")

    require_relative './presenter.rb'
    @preseneter = Presenter.new
    
    input = @preseneter.draw(@gibbet)

    while @gibbet.next_step(input) do
      input = @preseneter.draw(@gibbet)
    end

    @preseneter.end(@gibbet)
  end
end

game = Game.new
game.start