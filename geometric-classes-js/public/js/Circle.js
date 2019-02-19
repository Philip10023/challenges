class Circle {
  constructor(radius, x, y) {
    this.radius = radius;
    this.x = x || 0;
    this.y = y || 0;
   }

diameter() {
 let dia = this.radius*2;
 return dia;
 }
area(){
  let area = Math.PI * (this.radius*this.radius);
  return area;
}
perimeter(){
  let peri = Math.PI * 2 * this.radius;
  return peri;
}
}



// def center_point
//   [@x, @y]
// end
//
// def area
//   Math::PI * @radius * @radius
// end
//
// def perimeter
//   Math::PI * 2.0 * @radius
// end
// def diameter
//   @radius * 2
//
// }
