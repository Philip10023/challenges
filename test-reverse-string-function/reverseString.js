var reverseString = function(word) {
  var result = '';
  for (var i = 0; i < word.length - 1; i++) {
    result = word[i] + result;
  }
  return result;
};
