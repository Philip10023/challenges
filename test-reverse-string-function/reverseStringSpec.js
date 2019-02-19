describe('reverseString', () => {
  describe('new reverseString()', () => {
    it('reverses the string'), () => {
      reverseStringone = new reverseString("abc");
      expect(reverseStringone).tobedefined();
      expect(reverseString("abc")).toEqual("bca");

    };
  });
  });
