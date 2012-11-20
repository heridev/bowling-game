CodeKata: The Bowling Game in Ruby
===================================

![My image](https://www.evernote.com/shard/s250/sh/abd352d8-e102-476c-8766-f07a55444df2/c6add3da48a0756dc5d9c35dc7352920/res/1f53f2b9-f304-4bce-9baa-01cee7b5fc7f/skitch.png?resizeSmall&width=832)

The game consists of 10 frames as shown above. In each frame the player has two opportunities to knock down 10 pins. The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares.

A spare is when the player knocks down all 10 pins in two tries. The bonus for that frame is the number of pins knocked down by the next roll. So in frame 3 above, the score is 10 (the total number knocked down) plus a bonus of 5 (the number of pins knocked down on the next roll.)

A strike is when the player knocks down all 10 pins on his first try. The bonus for that frame is the value of the next two balls rolled.

In the tenth frame a player who rolls a spare or strike is allowed to roll the extra balls to complete the frame. However no more than three balls can be rolled in tenth frame.
