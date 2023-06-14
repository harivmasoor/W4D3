require_relative './Piece.rb'
require_relative './Steppable.rb'
KNIGHT_DIRS = [[1,2], [2,1], [-1,2], [-2,1], [-1,-2], [-2,-1], [1,-2], [2,-1]]

class Knight < Piece
    include Steppable
    def move_dirs
        KNIGHT_DIRS
      end
    
      def symbol
        '♘'
      end
    end
end


