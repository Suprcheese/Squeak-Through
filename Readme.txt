Squeak Through 1.9.0
====================

Version 1.9.0 was released October 25, 2024, and was tested using Factorio v2.0.1.
It primarily features code by Nommy, with contribution from Lupin and Foxite, and is maintained by Supercheese, who is grateful for strong community support.

This small mod reduces the collision boxes for many structures, allowing you to "squeak through" them while walking around your base.
Say goodbye to the frustration of having your path blocked by your steam engines or solar panels when walking around your base!

You can toggle the collision box shrinking for each type of entity using the in-game mod settings. Altering these settings will require you to restart the game.


Note to modders:
----------------
Squeak Through will look for the entity prototype value "squeak_behaviour", which if set to false will mean the entity is excluded from having its bounding box adjusted. Simply adding:

    squeak_behaviour = false

in the relevant entity prototype should suffice.


See also the associated forum thread: http://www.factorioforums.com/forum/viewtopic.php?f=91&t=16476

For future updates, I fully sanction the sequel Squeak Through 2 mod at this repo: https://github.com/CodeGreen0386/squeak-through-2

Cheers all.
