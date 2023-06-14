require_relative './Pieces/Pieces.rb'

class Board
    attr_reader :row
    def initialize
    @row = Array.new(8) {Array.new(8)}

    end

    def [](pos)
        row,col = pos
        @row[row][col]
    end

    def []=(pos,val)
        row,col = pos
        @row[row][col] = val
    end

    def move_piece(color,start_pos, end_pos)
        raise "There is no piece!!!!!"  if self[start_pos].nil?
        raise "The piece cannot move there!!!!!"  unless self[end_pos].nil?

        piece = self[start_pos]
        self[end_pos] = piece
        self[start_pos] = nil
        piece.pos = end_pos
    end

    def setup ()
        arr = []
        (0..1).each do |i|
            (0..7).each do |j|
                
                # row,col = pos
                row[i][j] = Piece.new("white",[i,j],@row)
            end
        end

        (6..7).each do |i|
            (0..7).each do |j|
                
                # row,col = pos
                row[i][j] = Piece.new("black",[i,j],@row)
            end
        end
    end
end