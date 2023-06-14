class Piece
    attr_accessor :pos,:color, :board
    def initialize(color,pos,board)
        @color = color
        @pos = pos
        @board = board
    end

    def symbol 
        'P'   
    end

    def to_s 
        # symbol
        color.to_s 
    end

    def empty?
        false
    end

    def inspect
        self.class
      end
end