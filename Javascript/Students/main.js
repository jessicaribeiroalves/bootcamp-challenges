// Beast Mode
/* Assign an empty array to a students variable.
Use the push method to add a student called Sarah
Use prompt to ask the user for their name, add it to the array.
Use a loop to ask the user for 3 names, add them all to the array.
Loop through the array and use the alert method to read each user back to the user. */

let students = [];

students.push("Sarah");
let i = 0;
while (i < 3) {
  let user_name = prompt("Please enter your name");
  students.push(user_name);
  i++
};

console.log(students);
let a = 0;
while (a < students.length) {
  alert(students[a]);
  a++
};