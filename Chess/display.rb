require 'colorize'
require_relative './cursor.rb'
# require_relative './Board.rb'

class Display
    attr_reader :cursor

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
        # puts render
    end

    def render
        system('clear')
        puts @board
        puts "  #{(0..7).to_a.join(' ')}"
        @board.grid.each_with_index do |row,i|
        puts "#{i} #{row.join(' ')}"   
        p #{i.join(' ')}
        end
    end

end
# b = Board.new
# d = Display.new(b)
# loop do 
# d.cursor.get_input
# p d.cursor.cursor_pos
# end