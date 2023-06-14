require_relative './Piece.rb'
require_relative './Slideable.rb'

class Queen < 
    include Slideable
# @pos
# @board
    def symbol
       '♕'
    end

    private
    def move_dirs
        HORIZONTAL_DIRS + DIAGONAL_DIRS
        # H_DIRS + D_DIRS
    end

