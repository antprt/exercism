class Phrase
  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    result = {}
    words = @sentence.scan(/\b[\w']+\b/).map(&:downcase)

    words.each do |word|
      result["#{word}"] = words.count(word)
    end

    result
  end
end