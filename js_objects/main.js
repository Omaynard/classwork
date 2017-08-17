var myArray = ['omar','Joe']; // defining an array
//myArray[0]//to access array
var myObject ={
	name: 'niall',
	age: 92,
	gender: 'male',
	location: 'london',
	skills:{
		skill1: 'running',
		skill2: 'jumping',
		skill3: 'drawing'
	},
	sayHello:function(){
		console.log('Hello Everyone');
	}
};
myObject.height = '2m'//add in an object
delete myObject.height //Delete an object
console.log(myObject.skills);
myObject.sayHello()// call a function within an object 
//myObject['name'] //access attribute of the object 