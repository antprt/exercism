class ScrabbleTest
  def initialize(word)
    @word = word.scan(/\W/).upcase
  end

  def score
    chars = @word.chars
    # ocurrencias de cada letra
    ocurrences = chars.map{ |ch| [ch, chars.count(ch)] }.to_h
    # Multiplicar por su valor
    ocurrences
  end

  private

  def values
    {
      'A': 1, 'E': 1, 'I': 1, 'O': 1, 'U': 1, 'L': 1, 'N': 1, 'R': 1, 'S': 1, 
      'T': 1, 'D': 2, 'G': 2, 'B': 3, 'C': 3, 'M': 3, 'P': 3 
    }
    F, H, V, W, Y                      4
    K                                  5
    J, X                               8
    Q, Z                               10
  end
end