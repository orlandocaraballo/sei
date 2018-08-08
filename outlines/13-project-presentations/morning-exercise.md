<img src="morning-exercise.jpg" width="100%">

# Morning Exercise

The goal of this exercise is to have you work thru a simple animation by keeping your structure, display and behavior separate. At the end of this exercise, you should have a button that when clicked, grows from `200px` in width and height to `400px` of width and height. 

Please make sure to read the instructions carefully so as to not get lost. Use prior examples of keyframes and js behavior to finish the task.

1. Create an three files:
    - `index.html`
    - `main.css`
    - `main.js`
2. In the html body create a single `div` with no `id` or `class` attribute set.
3. Set the `width` of this box to`200px` and the `height` to `200px`. 
4. Set the `background-color` to `black`.
5. Create a keyframe named `grow` that goes from `0%` to `100%` where the `height` and `width` both start at `200px` at `0%` and ends at `400px` by `400px` at `100%`.
6. In your css, run the `grow` animation for `1s` only when an element has a class of `large`.
7. In your js, target the `div` and change the class name of this `div` to `large` when clicked.

## If you have time

Try changing the `background-color` from `black` to `red` on the keyframe. Now that the animation changes the dimensions of the box and also the color, what would be a more appropriate name for the keyframe? What would be a more appropriate name for the class?