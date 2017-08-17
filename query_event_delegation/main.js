$(function(){

var $addButton = $('#add-button');
var $squareContainer = $('.red-square');
$addButton.click(addSquareToPage)

function addSquareToPage(event){

	$squareContainer.append('<div class="little-square"></div>');
};

// setInterval(addSquareToPage, 2000)

$squareContainer.on('click', '.little-square', function(event){
	var $this = $(this);
	$(this).addClass('black');
	setTimeout(function(){
 	$this.removeClass('black');

     }, 1000);

$squareContainer.on('click','.big-square',function(event){
	setInterval(function())
	$(this).css(transform, 40deg)
})

});



//Jquery Effects
// var $orangeBox =$('#big-square');
// $orangeBox.animate({
//     height:'100px',
//     width: '1000px'
// }, 2000)
//     .animate({
//         height:"300px",
//         width:"300px"
//     },1000) 

// setTimeout(sayHello, 2000)
// function sayHello (){
// 	console.log("yo")
// }
// setTimeout(function(){
// 	alert('Hello Omar');
// }, 3000);

	// setInterval(function(){
	// 	console.log('hello')
	// }, 2000);






});