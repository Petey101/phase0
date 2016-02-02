// DOM Manipulation Challenge


// I worked on this challenge by myself, with: Tim Beck.


// Add your JavaScript calls to this page:

// Release 0:
// Add the class "done" to the #release-0 div.

document.getElementById("release-0").className = "done";

// Release 1:
// Set the display property of the #release-1 div to none.
document.getElementById("release-1").style.display = "none";


// Release 2:
// Change the inner text of the <h1> tag to "I completed release 2."
document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2";

// Release 3:
// Add the background color #955251 to the #release-3 div. #955251 was Pantone's (Links to an external site.) color of the year for 2015!
document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:
// Select all occurrences of class .release-4 and change the text-size to 2em.
var x = document.getElementsByClassName("release-4");
for (var i=0;i<x.length; i++){
	x[i].style.fontSize = "2em";
};


// Release 5:
// Take the HTML in the template.hidden and append it to the bottom of the page. Use the Treehouse Blog Template Tag (Links to an external site.) resource for help.
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// Release 6: Reflect
// Create a reflection section in your "home-page.js" file. In it, answer the following questions:

// What did you learn about the DOM?
// I learned some basics about how to target certain elements using JS. It was very overwhelming at first, there's a lot of information to take in. 
// Using the DOM reminds me a lot of using methods to change objects(html elements in this case).


// What are some useful methods to use to manipulate the DOM?
// getElementById and getElementsByClassName were very useful in targeting specific elements. style, fontSize, backgroundColor and display all make a return from CSS and they function
// similarly.
