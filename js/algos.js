function longest_string(arr){
    longest_phrase = ""
    for (var i = 0; i < arr.length; i++){
        if ( arr[i].length > longest_phrase.length){
            longest_phrase = arr[i];
        }
    }
    return longest_phrase;
}


function key_value_pair_shared(obj0, obj1){
    for (var key in obj0){
        if (obj0[key] == obj1[key]){
            return true;
        }
    }
    return false;
}


function random_test_data(arr_length){
    var arr = []
    var letters = "qwertyuiopasdfghjklzxcvbnm";
    for (var i = 0; i < arr_length; i++){
        var word_length  = Math.floor(Math.random() * 10) + 1;
        arr[i] = "";
        for (var j = 0; j < word_length; j++){
            arr[i] += letters[Math.floor(Math.random()* 26)];
        }
    }
    return arr;
}


// Driver code

arr0 = ["a", "ab", "abc"];
arr1 = ["xyz", "yz", "z"];

console.log("Testing `longest_string` function:");
console.log("Test 0 Passed: ", longest_string(arr0) == "abc");
console.log("Test 1 Passed: ", longest_string(arr1) == "xyz");

obj0 = {name: "Steven", age: 54}; 
obj1 = {name: "Tamir", age: 54};
obj2 = {name: "George", age: 33};

console.log();
console.log("Testing `key_value_pair_shared` function: ");
console.log("Test 0 Passed: ", key_value_pair_shared(obj0, obj1) == true);
console.log("Test 1 Passed: ", key_value_pair_shared(obj1, obj2) == false);

console.log();
console.log("Testing `longest_string` on `random_test_data`");
for(var i = 0; i < 10; i++){
    var test_data = random_test_data((i + 1) * 2);
    console.log("Test ", i);
    console.log("Test data: ", test_data);
    console.log("Longest string: ", longest_string(test_data));
    console.log("---------------------------");
}