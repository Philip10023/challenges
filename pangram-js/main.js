let isPangram = (phrase) => {
  let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s",
  "t", "u", "v", "w", "x", "y", "z"];
  let matches = [];

  alphabet.forEach(function(letter) {
    if (phrase.toLowerCase().includes(letter)) {
      matches.push(letter);
    }
  });
  if (matches.length === 26) {
    return true;
  }
  else {
    return false;
  }
};
let sentences = [
  { content: 'The quick brown fox jumps over the lazy dog.', pangram: true },
  { content: 'The quick onyx goblin jumps over the lazy dwarf.', pangram: true },
  { content: 'Grumpy wizards make toxic brew for the evil queen and jack.', pangram: true },
  { content: 'Not a pangram', pangram: false },
  { content: '', pangram: false },
];

sentences.forEach((sentence) => {
  let result = isPangram(sentence.content);
 let correct = result;
  console.log(`isPangram gave a ${correct ? '' : 'in'}correct result for: ${sentence.content}`);
});
