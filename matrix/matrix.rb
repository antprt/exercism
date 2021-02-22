class Matrix
  def initialize(matrix)
    @rows = []
    
    matrix.split("\n").each do |row|
      new_row = row.split(" ").map(&:to_i)
      @rows.push(new_row)

      @cols ||= Array.new(new_row.size) { [] }

      new_row.each_with_index do |col, i|
        @cols[i] << col
      end
    end
  end

  def rows
    @rows
  end

  def columns
    @cols
  end
end