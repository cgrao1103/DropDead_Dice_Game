require_relative 'Game'

class AutoDropDead

  def play_game(sides, dice_count, player_count)

    game = Game.new(sides, dice_count, player_count)

    game.play

    winner = game.winner

    puts
    puts "================="
    puts "GAME OVER"
    puts "================="
    puts "Winner: #{winner.name}"
    puts "Score: #{winner.total_score}"

  end

end