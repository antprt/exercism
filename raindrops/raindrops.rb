class Raindrops
  STR_CONVERSOR = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def self.convert(num)
    results = (1..num).map{ |n| n if num%n == 0 }.compact
    strings = (STR_CONVERSOR.keys & results).map{|n| STR_CONVERSOR[n]}

    return results.join() if strings.empty?
    strings.join()
  end

end