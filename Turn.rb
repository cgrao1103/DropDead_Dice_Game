class Turn

  def initialize(player, dice_set)

    @player = player
    @dice_set = dice_set

  end

  def play

    loop do

      results = @dice_set.roll_all

      puts "#{@player.name} rolled #{results}"

      if results.include?(2) || results.include?(5)

        puts "Drop Dead! Dice showing 2 or 5 removed."

        @dice_set.remove_drop_dead_dice(results)

        break

      else

        points = results.sum

        puts "Scored #{points} points."

        @player.record_points(points)

      end

      break if @dice_set.count == 0

    end

  end

end