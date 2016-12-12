// Reversing a string

// create output variable
// for every letter in input string
//     get character by string length - index variable
//     append character to output 
// return output variable

function reverse(str) {
    var output = "";
    for (var i = 0; i < str.length; i++){
        output += str[str.length - 1 - i];
    }
    return output;
}


var result = reverse("Hello Earth.");

if ( 2 + 2 == 4){
    console.log(result);
}