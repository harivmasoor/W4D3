require_relative './Piece.rb'
require 'singleton'

class NullPiece < Piece
    include Singleton

    def initialize
    end
    
    def symbol
        ' '
    end

    def empty?
        true
    end
end