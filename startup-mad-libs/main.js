let companyName = "phils company";
let firstLine = "My company, " + companyName;
let anOffering = "A magic potion";
let secondLine = "is developing " + anOffering;
let aTargetAudience = "THE PEOPLE";
let thirdLine = "to help " + aTargetAudience;
let solveAProblem = "cure laziness";
let fourthLine = solveAProblem;
let secretsauce = "with magic";
let fifthLine = secretsauce;
let mainDiv = document.getElementById('main');
mainDiv.innerHTML = firstLine + "\n" + secondLine + "\n" +
thirdLine + "\n" +
fourthLine + "\n" +
fifthLine;
