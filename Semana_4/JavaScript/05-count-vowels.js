// Write a method that takes a string and returns the number of vowels
// in the string. You may assume that all the letters are lower cased.
// You can treat "y" as a consonant.
//
// Difficulty: easy.

function count_vowels(string) {
	var str = string.length;
	var vowels = ["a", "e", "i", "o", "u"];
	var count = 0

	for(var i = 0; i <= vowels.length - 1; i++) {
		for(var j = 0; j <= str -1; j++){
			if (string[i] === vowels[j]){
				count += 1
			}
		}
	}
	return count 
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( count_vowels('abcd') === 1 )
console.log( count_vowels('color') === 2 )
console.log( count_vowels('colour') === 3 )
console.log( count_vowels('cecilia') === 4 )
