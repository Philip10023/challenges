let list = new Array("* Write some JavaScript",
"* Submit System Check",
"* Take a Break");

 i = 0;
 let mainDiv = document.getElementById('main');
 let listDiv;



 while(i < list.length){


   listDiv = document.createElement('div');
   listDiv.className = 'todo-list';
   listDiv.innerHTML = list[i];

   mainDiv = document.getElementById('main');
   mainDiv.appendChild(listDiv);

  i += 1;

}
