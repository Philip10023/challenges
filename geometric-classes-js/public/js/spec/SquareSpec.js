describe('Square', () =>  {
  describe('new Square()', () =>  {
    it('takes argument for a length of a side', () =>  {
      let square = new Square(5);

      expect(square).toBeDefined();
      expect(square.length).toBe(5);
    });

    it('takes optional argument for the center point', () =>  {
      let square = new Square(5, 1, 2);

      expect(square).toBeDefined();
      expect(square.x).toBe(1);
      expect(square.y).toBe(2);
    });

    it('defaults (x,y) to (0,0) if not provided', () =>  {
      let square = new Square(5);
      expect(square).toBeDefined();
      expect(square.x).toBe(0);
      expect(square.y).toBe(0);

    });
  });

  describe('area()', () =>  {
    it('returns the area of the circle', () =>  {
      let square = new Square(5);

      expect(square.area()).toBe(25);
    });
  });

  describe('perimeter()', () =>  {
    it('returns the perimeter of the circle', () =>  {
      square = new Square(5);

      expect(square.perimeter()).toBe(20);
    });
  });

  describe('contains_point?(x,y)', () =>  {
    it('returns true for a point given inside of the square\'s perimeter', () => {
      square = new Square(5, 1, 2);

      expect(square.contains_point()).toBe(true);
    });

    it('returns false for a point given outside of the square\'s perimeter', () => {
      square = new Square(5, 10, 10);

      expect(square.contains_point()).toBe(false);
    });
  });
});
