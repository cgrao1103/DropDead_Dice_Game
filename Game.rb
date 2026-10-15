require_relative 'Player'
require_relative 'DiceSet'
require_relative 'Turn'

class Game

  def initialize(sides, dice_count, player_count)

    @players = []

    player_count.times do |i|
      @players << Player.new("Player #{i + 1}")
    end

    @sides = sides
    @dice_count = dice_count

  end

  def play

    @players.each do |player|

      puts
      puts "================="
      puts "#{player.name} begins"
      puts "================="

      dice_set = DiceSet.new(@dice_count, @sides)

      while dice_set.count > 0

        puts
        puts "#{dice_set.count} dice remaining"

        turn = Turn.new(player, dice_set)

        turn.play

      end

      puts
      puts "#{player.name} final score: #{player.total_score}"

    end

  end

  def winner

    @players.max_by(&:total_score)

  end

end