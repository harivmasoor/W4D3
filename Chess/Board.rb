# require_relative './Pieces/Pieces.rb'
require_relative './Pieces/Piece.rb'
require_relative './Pieces/nullpiece.rb'
require_relative './Pieces/Bishop.rb'

class Board
    attr_reader :row,:null_piece

    def initialize
    @row = Array.new(8) {Array.new(8)}
    @null_piece = NullPiece.instance
    setup
    end

    def [](pos)
        row,col = pos
        row[row][col]
    end

    def []=(pos,val)
        row,col = pos
        row[row][col] = val
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
                # row[i][j] = Piece.new("white",[i,j],@row)
                row[i][j] = Bishop.new("white",[i,j],self)
            end
        end

        (6..7).each do |i|
            (0..7).each do |j|
                # row[i][j] = Piece.new("black",[i,j],@row)
                row[i][j] = Bishop.new("black",[i,j],self)
            end
        end
    end


    def to_s
        row.inject(''){|acc,row| 
        acc + "#{row.join(' ')}\n"}
    end

    def valid_pos?(pos)
        pos.all?{ |ele| ele >= 0 || ele <= 7 }
    end

end

b = Board.new
puts b
p b[[1,6]].moves