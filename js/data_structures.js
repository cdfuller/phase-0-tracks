// Release 0 and 1

var colors = ["blue", "red", "green", "yellow"];
var names = ["Ed", "Chuck", "Harry", "Lucky"];

colors.push("purple");
names.push("Charlie");

console.log(colors);
console.log(names);

var horse_colors = {};

for (var i = 0; i < names.length; i++) {
  horse_colors[names[i]] = colors[i];
}

console.log(horse_colors);

// Release 2

function Car(year, make, model) {
  this.year = year;
  this.make = make;
  this.model = model;
  this.honk = function() {
  	console.log("Honk! Honk!")
  }
}

var Jetta = new Car(2016, "VW", "Jetta");
var Prius = new Car(2011, "Toyota", "Prius");
console.log(Prius);
Prius.honk();

// Release 3

// for (var prop in Prius) {
//   console.log("Prius" + prop + " = " + Prius[prop]);
// }