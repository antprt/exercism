class Series
  attr_reader :serie

  def initialize(serie)
    @serie = serie
  end

  def slices(n)
    raise ArgumentError if n > @series.length

    @series.chars.each_cons(n).map(&:join)
  end
end