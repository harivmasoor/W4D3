require_relative './Piece.rb'
require_relative './Steppable.rb'

class King < Piece
    include Steppable
    def move_dirs
     [
        [1,0], [0,1], [-1,0], 
        [0,-1],[1,1], [-1,-1], 
        [-1,1], [1,-1]
     ]
    end
    
    def symbol
        '♔'
    end
end