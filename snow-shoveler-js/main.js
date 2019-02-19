 // let length_ft = 20;
 // let width_ft = 8;
 // let height_ft = 8/12;
let cubic_ft = Math.round(49.4);//(length_ft * width_ft * height_ft);
if (cubic_ft > 0 && cubic_ft <= 49)
   {console.log("Your quote is $20");
 } else if (cubic_ft > 49 && cubic_ft <= 149)
  {console.log("your quote is $50");
} else if (cubic_ft > 150 && cubic_ft <= 299)
  {console.log("your quote is $100");
} else if (cubic_ft >= 299)
  {console.log("your quote is $150");
}
console.log(cubic_ft);
