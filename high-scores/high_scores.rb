class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    size = (@scores.size > 2) ? @scores.size - 3 : 0
    @scores.sort.drop(size).reverse
  end

  def latest_is_personal_best?
    @scores.max == @scores.last
  end
end