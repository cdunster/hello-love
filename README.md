An introduction into using the LÖVE (love2d.org) framework.

# Current Implementation
* After `2 seconds` a random enemy (red) will appear.
* `Space` key creates a new rectangle (blue).
* `Arrow keys` move the `blue rectangle(s)` around the screen (only one arrow key at once is registered).
* Any time one or more `blue rectangle(s)` collide with the `red enemy` all collided shapes (including enemy) will be filled in. The un-collided shapes will remain un-filled.
