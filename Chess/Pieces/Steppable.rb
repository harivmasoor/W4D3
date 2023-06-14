module Steppable
    def moves
        moves = []
        move_diffs.each do |dx, dy|
            x,y = pos
            new_pos = [x + dx, y + dx]
            if board.valid_pos?(new_pos) && board[new_pos].empty?
                moves << new_pos
            elsif board[new_pos].color != color
                moves << new_pos
            end
        end
        moves

    end
    end

    def move_diffs
        raise "This is overwritten by the class!"
    end
end