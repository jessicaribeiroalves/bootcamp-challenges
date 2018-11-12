/* Assign a new empty object to a variable called me
On the next line, add one key 'age' and set its value to your age
On the next line, add one key 'current location' and set its value to your current location
Use console.log to display the age and current location on screen
Use code to add an array of hobbies to your me object
Use code to delete your age key
Iterate through me.hobbies and log each hobby to the screen */

let me = {};
me.age = 27;
me.current_location = "Sydney";
console.log(me.age, me.current_location);

let my_hobbies = ["writing", "surfing", "cooking", "playing videogame"];
me.hobbies = my_hobbies;
delete me.age;

let i = 0;
while (i < my_hobbies.length) {
  console.log(me.hobbies[i]);
  i++
};