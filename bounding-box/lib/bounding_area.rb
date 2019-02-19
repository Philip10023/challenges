class BoundingArea
  def initialize(area = [])
    @area = area
  end
  def boxes_contain_point?(x,y)
    @area.each do |box|
        if box.contains_point?(x,y)
          return true
        end
    end
    return false
  end
end
