class Square {
  constructor(length, x, y){
    this.x = x || 0;
    this.y = y || 0;
    this.length = length || 0;
    this.width =  length;
  }

center_point() {
  center_point = (this.x,this.y);
  return center_point;
  }

area(){
  let area = this.length*this.width;
  return area;
  }

perimeter(){
  let perimeter = this.length*4;
  return perimeter;
  }
  contains_point(a, b) {
     a = this.x;
     b = this.y;
      if
      (a > this.length + this.x || a < this.length - this.x || (b > this.length + this.y || b < this.length - this.y))
    return true;
    else {
      return false;
    }
  }
}

// def diagonal
//   @length*Math.sqrt(2)
// end
// def contains_point?(a, b)
//   if
//     a > @length + @x || a < @x - @length || b > @width + @y || b < @width - @y
//     puts "point (#{a},#{b}) is NOT contained in or on the square"
//   else
//      puts "point (#{a},#{b}) IS contained in or on the square"
//   end
// end
// end
