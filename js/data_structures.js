var horseColors = ["Red", "Blue", "Pink", "Green"];
var horseNames = ["Ed", "Tom", "Horsey", "Sunshine"];
horseColors.push("Yellow");
horseNames.push("Sky");
var horses = {name: 'Ed', color: 'Red'}
function Car(make, year, inGoodCondition) {
    console.log("Our car is:", this);
    this.make = make;
    this.year = year;
    this.inGoodCondition = inGoodCondition;
    this.horn = function() {console.log("Honk!"); }
    console.log("CAR INITIALIZATION COMPLETE");
}
console.log("Let's build a car...");
var anotherCar = new Car("Honda", 2004, false);
console.log(anotherCar);
console.log("This car can honk:");
anotherCar.horn();
console.log("Let's build another car...");
var yetAnotherCar = new Car("Toyota", 1990, true);
console.log(yetAnotherCar.make);
console.log("This car can honk, too:");
yetAnotherCar.horn();