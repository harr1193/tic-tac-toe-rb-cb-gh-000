WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, player)
  board[index] = player
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
  [0,1,2,3,4,5,6,7,8].include?(index) && !(position_taken?(board, index))
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
end

def turn_count(board)
  count = 0
  [0,1,2,3,4,5,6,7,8].each {|pos| (count += 1 if position_taken?(board, pos)) }
  return count
end

def current_player(board)
  count = turn_count(board)
  count % 2 == 0 ? "X" : "O"
end

board = ["X", " ", " ", " ", " ", " ", " ", " " ," "]

display_board(board)
