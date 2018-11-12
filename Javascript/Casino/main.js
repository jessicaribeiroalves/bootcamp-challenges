// Casino Challenge
/* Create a new variable called user, set the value to: tom
Write an if statement: if the user's name is tom, say 'Hello Tom'
Add an else condition: say 'Hello someone other than Tom'
Add a new variable called age, set the value to: 18
If the user is 18, say 'welcome to the casino!'
Research 'prompt'. Use it in your code to ask the user for their age.
If the user is less than 18 years old, use the alert method to deny entry.*/

let user = {name:"tom", age: 18};

if (user.name === "tom") {
  console.log("Hello Tom");
} else {
    console.log("Hello someone other than Tom");
};

user.age = prompt("Please enter your age");

if (user.age >= 18) {
  console.log("Welcome to the casino!");
} else if (user.age < 18) {
  alert("Sorry, you are too young.");
};