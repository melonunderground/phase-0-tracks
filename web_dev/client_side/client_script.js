function changeFontFamily(event) {
    console.log("font fam click registered");
    console.log(event);
    event.target.style.fontFamily = "helvetica";// whatever the family name is = "helvetica";
}

var paragraph = document.getElementById("my-favorite-sports");
paragraph.addEventListener("click", changeFontFamily);

function changeColor(event) {
    console.log("color mouse over registered");
    console.log(event);
    event.target.style.color = "blue";// when mouse over change paragraph = "blue";
}

var paragraph2 = document.getElementById("my-favorite-shoes");
paragraph2.addEventListener("mouseover", changeColor);
