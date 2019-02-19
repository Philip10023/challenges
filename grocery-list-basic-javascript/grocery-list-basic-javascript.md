## Instructions

In this challenge, you will build a Grocery List app utilizing HTML and JavaScript.

### Getting Set Up

```no-highlight
$ et get grocery-list-basic-javascript
$ cd grocery-list-basic-javascript
```

Open the `index.html` file in your browser.

## Meeting Expectations Requirements

* Create a `GroceryItem` class within the `src/GroceryItem.js` file.
* A new `GroceryItem` should take two arguments, the name of the item, and the quantity.
* If the quantity is omitted when creating a new `GroceryItem`, it should default to `1`.
* Write code in `main.js` to create three different `GroceryItems` and store them
  in an array called `groceryList`.

### Tips

* Focus on one meeting one requirement at a time.
* Use the JavaScript console in your browser and `console.log` statements to
  troubleshoot your code.
* **DO NOT** start the requirements necessary to Exceed Expectations until you
  have completed the requirements necessary to Meet Expectations.

## Exceeding Expectations Requirements

Write JavaScript code to create a grocery list and insert it into the DOM.

Your app must satisfy the following requirements:

* Create a `toListElement` method on the `GroceryItem` class that returns the
  HTML list representation of the element. e.g.- `<li>(5) Avocados</li>`
* Write code in `main.js` to iterate over the `groceryList` array, and create an
  HTML unordered list of grocery items.
* Insert the HTML grocery list into the DOM.
