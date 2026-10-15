require_relative 'Die'

class DiceSet

  def initialize(dice_count, sides)

    @sides = sides
    @dice = []

    dice_count.times do
      @dice << Die.new(sides)
    end

  end

  def roll_all

    @dice.map do |die|
      die.roll
    end

  end

  def remove_drop_dead_dice(results)

    survivors = 0

    results.each do |value|
      survivors += 1 unless value == 2 || value == 5
    end

    @dice = []

    survivors.times do
      @dice << Die.new(@sides)
    end

  end

  def count
    @dice.length
  end

end