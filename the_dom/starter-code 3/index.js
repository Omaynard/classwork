//document.getElementsByTagName ('h1')
//document.getElementsByClassName ('classname')
//document.getElementsById ('id')

// edit style
// element.style.backgroundColor = 'red'
//edit html 
//element.innerHTML = 'HELLO'

var listItems =["Go out","Come Back","Buy food", "Eat Food"];

for(var i=0; i<listItems.length; i++){
	AddListItem(i);
}

function AddListItem(i){
	var newElementList = document.createElement('li');
    newElementList.innerHTML = listItems[i];
    var list = document.getElementById('list');
    list.appendChild(newElementList);b
}

var newElement = document.createElement ('li'); 
newElement.innerHTML = 'A new list item'

var list = document.getElementById('list');
list.appendChild(newElement)

var newElementP = document.createElement('p');
newElementP.innerHTML = 'A new p tag'

var p = document.getElementsByTagName('p');


function insertAfter(newNode, referenceNode) {
    referenceNode.parentNode.insertBefore(newNode, referenceNode.nextSibling);
}
insertAfter(newElementP, p[0])