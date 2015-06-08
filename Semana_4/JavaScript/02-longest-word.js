// Write a method that takes in a string. Return the longest word in
// the string. You may assume that the string contains only letters and
// spaces.
//
// You may use the String `split` method to aid you in your quest.
//
// Difficulty: easy.

function longest_word(sentence) {
	var str = sentence.split(""+" ");
	var longest = 0;
	var word = ("")
	for (var i = 0; i < str.length; i++) {
		if (longest <= str[i].length) {
			longest = str[i].length;
			word = str[i];
		}
	}
	return word;
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( longest_word( 'short longest' ) === 'longest' )
console.log( longest_word( 'one' ) === 'one' )
console.log( longest_word( 'abc def abcde' ) === 'abcde' )
