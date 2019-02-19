def perimeter(width, height = nil)
  if height.nil?
    width * 4
  else
    2 * width + 2 * height
  end
end
puts perimeter 2
puts perimeter 3, 3
puts perimeter 5
puts perimeter 5, 5
