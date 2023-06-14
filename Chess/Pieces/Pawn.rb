require_relative './Piece.rb'

class Pawn < Piece
    def moves
     forward_steps + side_attacks
    end
    
    def symbol
        '♙'
    end
    

    private
    def forward_dir
        if color == 'white'
            -1
        else #black
            1
        end
    end

    def forward_steps
        x, y = pos
        new_pos = [x + forward_dir, y]
        new_posw  = []

        if board.valid_pos?(new_pos) && board[new_pos].empty?
            new_posw <<  new_pos
        elsif board[new_pos].color != color
            new_posw <<  new_pos
        end

        if at_start_row?
            w = [x + 2 * forward_dir, y]
            new_posw << w
        end
        new_posw
    end

    def at_start_row?
        return true if (pos[0] == 1 && color == 'black') || (pos[0] == 6 && color == 'white')
         false
    end

    def side_attacks
        x, y = pos
        side_moves = [[x + forward_dir, y - 1], [x + forward_dir, y + 1]]
        side_moves.select do |new_pos|
            next false unless board.valid_pos?(new_pos)
            next false if board[new_pos].empty?
            board[new_pos].color != color
        end
    end

end