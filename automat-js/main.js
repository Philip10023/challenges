let menu = ['Chicken Pot Pie',"Baked Beans", "Macaroni and Cheese",
"Burgundy Sauce with Beef and Noodles", "Creamed Spinach", "Pumpkin Pie",
 "Strawberry Shortcake"];

 i = 0;
 let mainDiv = document.getElementById('main');
 let foodItemDiv;



 while(i < 7){


   foodItemDiv = document.createElement('div');
   foodItemDiv.className = 'food-item';
   foodItemDiv.innerHTML = menu[i];

   mainDiv = document.getElementById('main');
   mainDiv.appendChild(foodItemDiv);

   i += 1;

}

  foodItemDiv.addEventListener('click', () => {
  main.className += ' hidden';
  }, false);
