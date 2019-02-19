### Introduction

![Multiplication Table](https://s3.amazonaws.com/horizon-production/images/multiplication-table.png)

Create a JavaScript class called `MultiplicationTable` that takes two arguments,
the width and height.

```javascript
let multiplicationTable = new MultiplicationTable(12, 10)
```

Next, create a `toHTML` method on the class, which outputs a HTML table
representation of a multiplication table.

Finally, write some JavaScript to insert this HTML into the document.

```javascript
let mainDiv = document.getElementById('main')
mainDiv.innerHTML = multiplicationTable.toHTML()
```

### Resources

* [HTML table element - MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table)
* [Multiplication Table - Wikipedia](https://en.wikipedia.org/wiki/Multiplication_table)
