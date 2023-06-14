require_relative './Piece.rb'
require_relative './Slideable.rb'

class Bishop < Piece
    include Slideable

    def move_dirs
        DIAGONAL_DIRS
    end

    # def symbol

    # end
end
