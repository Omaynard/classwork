// // getting an element by ID
// document.getElementById('count')
// $('count')

// //getting an element by Class Name
// document.getElementByClassName('count')
// $('.count')
// // getting an element by Tag Name
// document.getElementByClassName('count')
// $('count')

// //Create and element 
// car newH1 = document.createElement

$(function (){

	$('h1').click(function(event){
		$(this).css('color','red');
	});
	
	
	$('li').click(function(event){
		$(this).toggleClass('done');
		// .hasClass
		// .addClass
		// .removeClass

		
	});
	$('#count').html('123112');

	$('body').append('<p>I am a new p tag</p>')
	$('ul').append('<li> new item</li>')
	$('content').eq(0).append('<p> another p </p>');
	// .insertAfter('<>')
	// .insertBefore('<>')
	var list = $('#list')
	$list.before('<h2> this is a new h2</h2>')
	$list.after('<h2> this is a new h2</h2>')


	//$('.content').remove();




});
