class Player
  attr_accessor(:name, :lives, :points)

  def initialize(name)
    @name = name
    @lives = 3
    @points = 0
  end

  def score_point
    @points += 1
  end

  def wrong_answer
    @lives -= 1
  end

end