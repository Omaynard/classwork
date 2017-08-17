// 
// function sayHello(){
// 	console.log('hello');
// 	sayGoodbye();
// }
// function sayGoodbye(){
// 	console.log('goodbye');
// }
// sayHello();


//Self-executing function 

(function (){
	var name = 'hello';
	function sayHello;
	function sayHello(){
		console.log(name);
	}
	sayHello();
})()