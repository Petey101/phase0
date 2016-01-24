 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Defeat the monster
// Goals:Attack the monster until it is dead
// Characters:Hero and Monster
// Objects:Hero, Damage and Monster
// Functions: Attack, Monster death

// Pseudocode
// Create the hero object which will have the attack function.
// Create damage object which will determine how much damage your hero does.
// Create monster function which will have monster health and dies function.
// After attacking, determine if the monster is still alive.
// If monster is still alive return message "attack again".
// If monster is dead return victory message.

// Initial Code

// var hero = { 
//   attack: function() { 
//     damage.roll
//     if (monster.health >= damage.roll){
//       monster.health = monster.health - damage.roll; 
//       if (monster.health <= 0){
//         monster.dies(); 
//       }
//       else{
//       console.log("Monster is still alive! Attack again!");
//       }
//     }
//     else{
//       monster.health = monster.health - damage.roll;
//       if (monster.health <= 0){
//         monster.dies();
//       }
//     }

//   }
// };

// var damage = { 
//   roll: Math.floor((Math.random()*10)+1)
// };

// var monster = { 
//   health: 10,
//   dies: function() {
//     console.log("The monster is slain!")
//   }
// };

// Refactored Code
var turns = {
    number: 1
}
var battle = {
    start: function() {
        if (monster.health <= 10) {
            console.log("A weak monster appears with " + monster.health + "HP!");
        } else if (monster.health <= 20) {
            console.log("A normal monster appears with " + monster.health + "HP!");
        } else {
            console.log("A tough monster appears with " + monster.health + "HP!");
        }
    }
};

var hero = {
    attack: function() {
        if (monster.health >= damage.roll) {
            monster.health = monster.health - damage.roll;
            if (monster.health <= 0) {
                monster.dies();
            } else {
                console.log("You deal " + damage.roll + " damage to the monster. The monster has " + monster.health + " HP left. Attack again?");
                turns.number += 1;
            }
        } else {
            monster.health = monster.health - damage.roll;
            if (monster.health <= 0) {
                monster.dies();
            }
        }
    }
};
var damage = {
    roll: Math.floor((Math.random() * 10) + 1)
};

var monster = {
    health: Math.floor((Math.random() * 30) + 1),
    dies: function() {
        console.log(" The monster is slain! You defeated it in " + turns.number + " turns!")
    }
};
//driver code
battle.start();
hero.attack();
hero.attack();
hero.attack();
hero.attack();
console.log(damage.roll)

// Reflection
// What was the most difficult part of this challenge?
// The most difficult part of this challenge for me was trying to figure out what kind of game I wanted to make and if the tools I had were enough to create it.

// What did you learn about creating objects and functions that interact with one another?
// You can use objects and functions in other objects and functions by calling upon them. You can also alter objects in other objects by calling upon it and changing it in another place.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// The only built-in methods I used was random and I had it in my code from the intial solution. Random will help me get a random number from a range I give it.

// How can you access and manipulate properties of objects?
// You can access and manipulate properties of objects by calling it. For example, I can access the health property in monster by calling it with monster.health. I can then manipulate it by adding or subtracting to it as I wish.
