Battleships
===
This is my own attempt at creating a Battleships game. The Makers Academy tutorial on Battleships did last 2 weeks. In week 2 at Makers Academy, we aimed to create an engine to play in the terminal and in week 3, our goal was to export it graphically in the browser.

Battleships (or Battleship) is a game where each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grid.
![board_image](https://github.com/makersacademy/course/raw/master/images/battleships.jpg)
After each player has placed their ships on their own board they take turns to shoot on the opponent's board. In each round, each player takes a turn to announce a target square in the opponent's grid which is to be shot at. The opponent announces whether or not the square is occupied by a ship, and if it is a hit, they mark this on their own primary grid. The attacking player notes the hit or miss on their own tracking grid, in order to build up a picture of the opponent's fleet.

When all of one player's ships have been sunk the game finishes and the player who has ships remaining is the winner.

Objectives of exercise
----
To learn about Object-Oriented-Programming and Test-Driven-Development on a board game.

Technologies used
----
- Ruby
- Rspec

My approach
----

In this attempt, I tried to re-create the engine. The classes are:
ship - water - cell - board - player - game
I started to work on classes in this order.
The game is still work-in progress at the moment. I have at this point 22 passing examples/tests and 1 failure which I'm working on.
