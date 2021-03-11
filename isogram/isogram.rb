class Isogram
  def self.isogram?(input)
    return true if input.empty?

    chars = input.downcase.gsub(/\W/, '').chars
    chars.map{ |ch| chars.count(ch) }.uniq.max == 1
  end
end