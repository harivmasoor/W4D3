# generally use require for system files
require_relative './Pieces/Piece.rb'
require_relative './Pieces/null_piece.rb'
require_relative './Pieces/Bishop.rb'

class Board
  attr_reader :grid, :null_piece

  def initialize
    @null_piece = NullPiece.instance
    @grid = Array.new(8) { Array.new(8, null_piece) }
    populate
  end

  def move_piece(start_pos, end_pos)
    piece = self[start_pos]
    self[end_pos] = piece
    self[start_pos] = null_piece
  end

  def valid_pos?(pos)
    pos.all? { |ele| ele >= 0 && ele <= 7 }
  end

  def [](pos)
    r, c = pos
    grid[r][c]
  end

  def []=(pos, val)
    r, c = pos
    grid[r][c] = val
  end

  def populate
    [0,1].each do |i|
      grid[i] = grid[i].map.with_index { |_, j| Bishop.new([i,j], :white, self) }
    end

    [6,7].each do |i|
      grid[i] = grid[i].map.with_index { |_, j| Bishop.new([i,j], :black, self) }
    end
  end

  def to_s
    grid.inject('') do |acc, row|
      acc + "#{row.join(' ')}\n"
    end
  end
end

b = Board.new
puts b
p b[[1,6]].moves

# p calls inspect and outputs to console with a new line
# puts calls to_s and outputs to console with a new line
# print calls to _s and outputs to console
