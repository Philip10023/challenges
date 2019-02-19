var Spaceship = class Spaceship {
constructor(name){
this.name = name;
this.propulsion = null;
this.mountPropulsion = function(Rocket){
  this.propulsion = Rocket;
  console.log(`Propulsion installed`);
};
this.takeoff = function(Rocket){
if(Spaceship.fuel === 0)
console.log("LAUNCH FAILED");
else{
  console.log("ccrrrrrrrrrrrrrrrrrrrrrrSHHHHHHHHHHHHHHHHHHHHHHPEEEEEEEEEEEEEEEOOOOOOOMMM");
}
};
this.crew = [];
this.loadCrew = function(crewNames){
  crewNames.forEach (name => {
    this.crew.push(name);
    console.log(`${name.name} has boarded the ship!`);
this.captain = function(crew){

let randomCaptain = Math.floor(Math.random() * crew.length);
let randcapt = crew[randomCaptain];
return randcapt.name;
};
});
};
}
};

module.exports = Spaceship;
