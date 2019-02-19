// Exercise: Find the top navbar by query for the element type, which is <nav>.
// 1) $(nav)

// Exercise: Find the sidebar on the right by using it's id.
// 2) $('#sidebar-right')

// Exercise: Find the "Pages" and "Groups" sections of the sidebar by using their class.
// 3) $('.pages')
//    $('.groups')

// Exercise: Find all of the comments on the page.
// 4) $('.comments')

// Exercise: Find the first comment on the page.
// 5) $('.comments')[0]

// Exercise: Find the last comment on the page.
// 6) $('.comments')[3]

// Exercise: Find the first comment nested under the third post.
// 7) let firstComment = $($('.comments').find('p')[3]);
// firstComment

// Exercise: Find one of the ads in the sidebar and use .hide() to hide it.
// 8) let firstAd = $('.ad-slot')[0];
// firstAd
// $(firstAd).hide()

// Exercise: Use .show() to make the ad that you hid in the previous step visible again.
// 9) $(firstAd).show()

// Exercise: Use .toggle() to toggle the display of the nav bar at the top of the page.
// 10) $('nav').toggle()

// Exercise: Use .attr() to change src attribute of one of the ads in the sidebar. Here's an image source if you need one: http://placebear.com/200/300.
// 11) let $Adchange = $('.ad-slot:nth-child(1) img');
// $Adchange.attr('src','http://placebear.com/200/300');

// Exercise: Find Sam's post and change it's text to something incredible.
// 12) $($('.post')[3]).text('WOW EXCITING')

// Exercise: Find the first post and use .addClass() to add the .post-liked class to it.
// 13) $($('.post')[0]).addClass('.post-liked')

// Exercise: Find the second post and use .removeClass() to remove the .post-liked class.
// 14) $($('.post')[1]).removeClass('.post-liked')

// Exercise: Find any post and use .toggleClass() to toggle the .post-liked class.
// 15) $($('.post')[1]).toggleClass('.post-liked')
