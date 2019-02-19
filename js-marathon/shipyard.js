var Rocket = require('./Rocket');
var CrewMember = require('./CrewMember');
var Spaceship = require('./spaceship');

 function launchpad(ourShip, crew, Rocket) {
  shipname = `Todays Spaceship is ${ourShip.name}`;
    console.log(shipname);
    let loadCrew = ourShip.loadCrew(crew);
    let newCaptain = ourShip.captain(crew);
    console.log(`*high-five* ${newCaptain}`);
    mountPropulsion = ourShip.mountPropulsion();

    takeoff = ourShip.takeoff();
}

let crewNames = [" Max", " Matt", " Kyle", " Keaton", " Mike"];
let ourShip = new Spaceship("Traveler");

 let trainCrew = (crewNames) => {
   trainedCrew = [];
  for (let x = 0; x < crewNames.length; x++) {
    let member = new CrewMember(`${crewNames[x]}`, true);
    trainedCrew.push(member);
  }
  return trainedCrew;
};


let crew = trainCrew(crewNames);
launchpad(ourShip, crew, Rocket);
