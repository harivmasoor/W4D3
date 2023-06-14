require_relative './Piece.rb'
require_relative './Slideable.rb'

class Rook < Piece
  include Slideable

  def move_dirs
    HORIZONTAL_DIRS
  end

  def symbol
    '♖'
  end
end