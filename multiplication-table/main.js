class MultiplicationTable {
  constructor(width, height) {
    this.width = width;
    this.height = height;

  }
  toHTML() {
    let output = ("<table>");

    for(let a = 1; a <= this.height; a++) {
      output += ("<tr>");

      for(let b = 1; b <= this.width; b++) {
        output += `<td> ${ a*b }</td>`;
      }

       output += ("</tr>");
    }

    output += ("</table>");
    return output;
  }
}


let multiplicationTable = new MultiplicationTable(12, 10);
let mainDiv = document.getElementById('main');
mainDiv.innerHTML = multiplicationTable.toHTML();
