
//pseudocode
//take the letters of the word chronologically and reverse them. take the length of the word subtracting 1 to line up with the index. start at the end of the word moving backwards to the beginning and adding each letter to create reversed word.


//original
//first letter = c
//second letter = a
//third letter = t
//fourth letter = c
//fifth letter = h
//new
//first letter = h
//second letter = c
//third letter = t
//fourth letter = a
//fifth letter = c

function reverser(str) {
var reversed = "";

for (var i = str.length - 1; i >= 0; i--) {
    reversed = reversed + str[i];
}
if (1 == 1){
  console.log("the word reversed is " + reversed);
} else {
  console.log("One Shirley Temple, coming up!");
}
}

reverser("babbler");
