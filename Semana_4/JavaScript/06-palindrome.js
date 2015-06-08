// Write a method that takes a string and returns true if it is a
// palindrome. A palindrome is a string that is the same whether written
// backward or forward. Assume that there are no spaces; only lowercase
// letters will be given.
//
// Difficulty: easy.

function is_palindrome( string ) {
	return string ===string.reverse
}

function reverse( string ) {

	var new_string = ""	

	for (var i = string.length; i>= 0; i--) {
		new_string += string[i];
	}
	return(new_string);
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( is_palindrome('abc') === false )
console.log( is_palindrome('abcba') === true )
console.log( is_palindrome('z') === true )
