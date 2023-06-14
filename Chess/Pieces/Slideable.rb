module Slideable
    HORIZONTAL_DIRS = [[1,0], [0,1], [-1,0], [0,-1]]
    DIAGONAL_DIRS =  [[1,1], [-1,1], [-1,-1], [1,-1]]

def move_dirs
    raise "Needs to be overwritten within including class"
end

def moves
    moves = []
    new_pos = pos.dup
    move_dirs.each do |dir|
        x,y = dir
        moves += grow_unblocked_in_dir(x,y)
    end
    moves
end


def horizontal_dirs
    HORIZONTAL_DIRS
end

def diagonal_dirs
    DIAGONAL_DIRS
end

private
def grow_unblocked_in_dir(dx,dy)
    res = []
    new_pos = [pos.first + dx ,pos.last + dy]
    while board.valid_pos?(new_pos) && board[new_pos].empty?
        res << new_pos
        new_pos = [new_pos.first + dx ,new_pos.last + dy]
    end
    unless board[new_pos].nil?
        res << new_pos if board[new_pos].color != color
    end
    res
end

# def grow_unblocked_in_dir(dx,dy)
#     # dx,dy:[0,0] 
#     # out of board   Checked
#     #empty ? nil?    Checked
#     #color ?
#     dirarr =[]

#     new_x = @pos[0] + dx
#     new_y = @pos[1] + dy

#     return dirarr unless @board.valid_pos?(new_x,new_y)

#     if @board.empty?(new_x,new_y)
#         dirarr << pos
#     elsif () # color
#     else
#         return dirarr
#     end
#     dirarr << pos

#     dirarr
# end

end