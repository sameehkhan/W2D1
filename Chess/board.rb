class Board

  def initialize
    @grid = Array.new(8) { Array.new(8) }
  end

  def self.board_setup
    @grid.each do |row|
      row.each do |col|
        if [0..1].member?(row) || [6..7].member?(row)
          @grid[row][col] = Piece.new
        else
          @grid[row][col] = NullPiece.new
        end
      end
    end
  end


end


class Piece

  def initialize

  end

end


class NullPiece < Piece

  def initialize


  end
end
