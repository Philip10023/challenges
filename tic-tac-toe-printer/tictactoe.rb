board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]
def print_grid (board)
  board.each_with_index do | row, index |
    row.map do |spot|
      if spot.nil?
          spot = "  "
      end
    end
    puts "#{board[index][0]} | #{board[index][1]} | #{board[index][2]}"
    puts "-----------"
  end
end
print_grid board_a
puts "\n"

print_grid board_b
