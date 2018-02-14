# BVTest-Ruby

This README outlines the details of collaborating on this Ruby console application.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](https://git-scm.com/)
* [Ruby](https://rubyinstaller.org/) (2.4.X)

## Installation

* `git clone <repository-url>` this repository
* `cd BVTest-Ruby`

## Running / Development

* `ruby tic_tac_toe.rb`
* Follow the instructions & enjoy the game!

## Notes

The game Randomize who plays the first, you can choose your piece. <br>
At the end of the game in the box appears the name of the winner player<br>

Check for winner: <br>
* Search the movements of the player and check if he has any of the winning movements.<br>

AI: <br>
* Winning Move: Look for possible winning moves that have 2 cells equal to current player piece <br>
* Block Move: Look for possible winning moves that have 2 cells equal to the other player and blocks <br>
* Center Move: If center cell is available it takes it <br>
* Corner Move: If the other player takes one corner, it takes the opposite corner. If all corners are available it takes any corner <br>
* Randon move: It takes a random move <br>
