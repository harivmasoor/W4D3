class Piece
    attr_reader :pos, :color, :board
  
    def initialize(pos, color, board)
      @pos = pos
      @color = color
      @board = board
    end
  
    def symbol
      'P'
    end
  
    def to_s
      symbol
    end
  
    def inspect
      self.class
    end
  
    def empty?
      false
    end
  end