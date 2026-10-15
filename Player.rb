class Player

  attr_reader :name

  def initialize(name)

    @name = name
    @score_sheet = []

  end

  def record_points(points)

    @score_sheet << points

  end

  def total_score

    @score_sheet.sum

  end

end