module Slideable
    HORIZONTAL_DIRS = [[1,0], [0,1], [-1,0], [0,-1]]
    DIAGONAL_DIRS = [[1,1], [-1,-1], [-1,1], [1,-1]]
  
    def move_dirs
      raise "Needs to be overwritten within including class"
    end
  
    def moves
      moves = []
      move_dirs.each do |dir|
        x, y = dir
        moves += grow_unblocked_moves_in_dir(x, y)
      end
      moves
    end
    
    private
    def grow_unblocked_moves_in_dir(dx, dy)
      res = []
      new_pos = [pos.first + dx, pos.last + dy]
      
      while board.valid_pos?(new_pos) && board[new_pos].empty?
        res << new_pos
        new_pos = [new_pos.first + dx, new_pos.last + dy]
      end
  
      unless board[new_pos].nil?
        res << new_pos if board[new_pos].color != color
      end
      res
    end
  end
  
  # if/unless
  # while/until