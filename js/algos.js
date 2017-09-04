//pseudocode
//cycle through each word in the group of words determining their length. store the first word //with any letters by comparing it to a letterless word. get the next word and compare it to the //currently stored word replacing it if the next word is longer. change the word length back to the word and display.


var array = ["long phrase","longest phrase","longer phrase"];
var letters = 0;
var longestWord = " ";

for (var i = 0; i < array.length; i++) {
    if (array[i].length > letters) {
    letters = array[i].length;
    longestWord = array[i];
    }
}
console.log(longestWord);


var 1 = ({name: "Ren", age: 102}, {name: "Axe", age: 102});
var 2 = ({transport: "scooter", speed: 65}, {transport: "horse", speed: 15});
