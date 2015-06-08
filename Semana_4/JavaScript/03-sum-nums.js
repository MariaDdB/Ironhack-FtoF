// Write a method that takes in an integer `num` and returns the sum of
// all integers between zero and num, up to and including `num`.
//
// Difficulty: easy.

function sum_nums(num) {
	var result = num;

	if (num === 1 ){
		return 1;
		}else{
			for (var i = num-1; i >= 1; i--){
				result += i;
			}
		}
		return result;
}

// These are tests to check that your code is working. After writing
// your solution, they should all print true.

console.log( sum_nums(1) === 1 )
console.log( sum_nums(2) === 3 )
console.log( sum_nums(3) === 6 )
console.log( sum_nums(4) === 10 )
console.log( sum_nums(5) === 15 )
