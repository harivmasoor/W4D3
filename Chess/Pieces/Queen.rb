class Queen
    include Slideable

    def move_dirs
        H_DIRS + D_DIRS
    end

    def symbol
        symbol="\u265B"
    end