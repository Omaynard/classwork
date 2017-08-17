//Shows a popup box on the screen with some text inside it//
// alert('Some Information');
// Output some text to the chrome console.
//console.log('Some other information');
// returns us the data type of a variable 
//typeof()
//integer are whole numbers
//floats are fraction/decimal numbers
// Advance maths operators : 
//Math.pow(number, number )number to the power of number
//Math.floor
//Math.ceil
//Math.random
//Strings
//.length
//.charAt()
//.toUpperCase
//.replace
// Arrays
// .pop
//.push
//.shift
//.unshift
 var daysOfTheWeek = ['monday','tuesday','wednesday','thursday', 'friday']
// //for loop
// for(var i = 0; i < daysOfTheWeek.length; i++) {
// 	var current = daysOfTheWeek[i];
// 	console.log(current.toUpperCase());

//}
daysOfTheWeek.forEach(function (el,i){
	console.log(el)
	console.log(i)
})
