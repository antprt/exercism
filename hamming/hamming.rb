class Hamming
  def self.compute(string1, string2)
    raise ArgumentError if string1.size != string2.size

    counter = 0
    (0..string1.size).count {|i| counter += 1 if string1[i] != string2[i] }
  end
end