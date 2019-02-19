# Dog Closures

Let's try to apply what we have learned about closures. Have a look at this code sample. Let's say you wrote it and have submitted it for review.

```js
let stateDogNameOpinion = () => {
  let commonDogName = 'Rover';
  let unCommonDogName = 'Susan';

  return `I believe ${commonDogName} is an excellent dog name. The name ${unCommonDogName} is a bad dog name.`;
}

let stateDogNameFact = () => {
  let commonDogName = 'Rover';
  let unCommonDogName = 'Susan';

  return `I have never met a dog named ${unCommonDogName}; while several dogs are named ${commonDogName}`;
}

let callDogs = () => {
  let commonDogName = 'Rover';
  let unCommonDogName = 'Susan';

  return `Hey, come here ${commonDogName} and ${unCommonDogName}`;
}

stateDogNameOpinion();
stateDogNameFact();
callDogs();
```

This is a pretty simple bit of code that defines some functions that internally use some variables. But those variables are pretty repetitive. You just got word that your team leader wants you to DRY it up:

"Hey developer, please notice that you have all these functions using the same strings. Why not just define those strings in one place?" she says.

You reply: "Well, I could move them out of those functions and put them at the top. But I didn't want to pollute the global namespace with those variables, so I kept them inside the scope of those functions. There are some other places in the code where we might want to use the variable name `commonDogName`. Right?"

"Exactly. We do want to keep those variables out of the global namespace. But you can DRY it up without causing the pollution. I will send you some starter code. Go figure it out."

So, how do we bridge this divide between you and your team leader? We need to define `commonDogName` and `unCommonDogName` only once, use them in all of those functions, and not pollute the global namespace. How do we achieve all of these goals? Closures. Let's look at the starter code, and find a way to solve the issue.

On the command line, get the starter code with

```no-highlight
et get dog-closures
```

Good luck!
