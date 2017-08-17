document.addEventListener('DOMContentLoaded',function(){
 	console.log('dom content is loaded');

// //method 1 click event listeners
// 	var myButton = document.getElementById('myButton');
// 	myButton.addEventListener('click',function(event){
// 		console.log('my button has been clicked')
// 	})
// //method 2
// 	myButton.addEventListener('click',sayHello);
// 	function sayHello(event){
// 		console.log(' my buttons been clicked')
// 	}

// 	//submit event

// 	var myForm = document.getElementById('myForm');

// 	myForm.addEventListener('submit', handleSubmit);
// 	function handleSubmit(event){
// 		event.preventDefault(); // only for form event listener 
// 		console.log('form has been submitted')
// 		console.log(event)
// 	}

// 	// Array of buttons - click event
// 	var myButtons = document.getElementsByClassName('myButtons');
// 	for(var i = 0; i < myButtons.length; i++){
// 		var currentButton = myButtons[i]
// 		currentButton.addEventListener('click',function(event){
// 			console.log(this.value)
// 			this.style.color = 'red'
// 			this.style.fontSize = '20px'
// 		})
// 	}
// 	var div1 = document.getElementById('div1')
// 	var div2 = document.getElementById('div2')
// 	var div3 = document.getElementById('div3')

// 	div1.addEventListener('click',function(event){
// 		event.stopPropagation()
// 		console.log('div1 has been clicked')
// 	})
// 	var div2 = document.getElementById('div2')
// 	div2.addEventListener('click',function(event){
// 		event.stopPropagation()
// 		console.log('div2 has been clicked')
// 	})d
// 	var div3 = document.getElementById('div3')
// 	div3.addEventListener('click',function(event){
// 		event.stopPropagation()
// 		console.log('div3 has been clicked')
// 	})

   var enterButton = document.getElementById('do-something')
   var div = document.getElementById('user-output');
   var text = document.getElementById ('user-input');
   enterButton.addEventListener('click',function(event){
    var texts = text.value
    div.innerHTML = texts
    text.value = ''
    });



   	
	
   	
   



































 });