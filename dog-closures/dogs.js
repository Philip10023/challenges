function dogTalk() {
  let commonDogName = 'Rover';
  let unCommonDogName = 'Susan';

  return {
    stateDogNameFact() {
      return `I have never met a dog named ${unCommonDogName}; while several dogs are named ${commonDogName}`;
    },
    stateDogNameOpinion() {
      return `I believe ${commonDogName} is an excellent dog name. The name ${unCommonDogName} is a bad dog name.`;
    },
    callDogs() {
      return `Hey, come here ${commonDogName} and ${unCommonDogName}`;
    },
  };
}
let talk = dogTalk();
talk.callDogs();
