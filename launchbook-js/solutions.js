// Exercise: Find the top navbar, using a query for the HTML element type. The navbar's type is `<nav>`.
// 1) document.getElementsByTagName('nav')

// Exercise: Find the sidebar on the left by using its id.
// 2) document.getElementById('sidebar-left');

// Exercise: Find the 'Pages' and 'Groups' sections of the sidebar by using their class.
// 3) document.getElementsByClassName('pages');
// document.getElementsByClassName('groups');

// Exercise: Find all of the comments on the page.
// 4)document.getElementsByClassName('comments');

// Exercise: Find the first comment on the page.
// 5)document.getElementsByClassName('comments')[0];

// Exercise: Find the last comment on the page.
// 6)document.getElementsByClassName('comments')[3];

// Exercise: Find the fourth comment on the page. Make sure you grab the fourth *comment* rather than the fourth *block* of comments. You may need more than one line of code!
// 7) let find = document.getElementsByClassName('comments');
//  let comment = find[2].getElementsByTagName('p')[0];
//  comment;

// Exercise: Find one of the ads in the sidebar and hide them.
// 8) addslotone = document.getElementsByClassName('ad-slot')[0];
// <div class=​"ad-slot">​…​</div>​<h6>​Ad Slot​</h6>​<img src=​"http:​/​/​placegoat.com/​200/​200">​</div>​
// addslotone.style.visibility = 'hidden';
// "hidden"

// Exercise: Set the visibility on the ad that you hid in the previous exercise to make it visible again.
//addslotone.style.visibility = 'visible';
//"visible"
// Exercise: Use `setAttribute` to change `src` attribute of one of the ads in the sidebar.

// Exercise: Find Sam's post and change its text to something incredible.

// Exercise: Find the first post and add the `.post-liked` class to it.

// Exercise: Find the second post and remove the `.post-liked` class.
