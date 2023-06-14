class Queen
    include Slideable
# @pos
# @board
    def symbol
        symbol="\u265B"
    end

    private
    def move_dirs
        horizontal_dirs + diagonal_dirs
        # H_DIRS + D_DIRS
    end

