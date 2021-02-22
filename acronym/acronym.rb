class Acronym
  def self.abbreviate(sentence)
    sentence.gsub(/[^a-zA-Z]/, ' ').split(" ").map{|str| str[0].upcase}.join
  end
end