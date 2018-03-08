# Adding to HTML

## Inline

```html
  <span style="color: red" />
```

## Style

```html
  <head>
    color: blue;
  </head>
```

## File

```html
  <link href="main.css">
```

## Rulesets

![Image of Yaktocat](https://en-support.files.wordpress.com/2011/09/css-selectors-lrg.png)

* Selectors target elements on an html page
* Declarations encompass one or more properties with assigned values
* Properties identify what is being styled
* Values define how a property is being styled


# Selectors

## Individual
```css
span { color: red; }
```

## Multiple

```css
span, div { color: green; }
```

Attributes
* Values

## Class

```html
<!-- html -->
<div class="class-name"></div>
```

```css
/* css */
.class-name {
  height: 100px;
  width: 100px;
}
```

## Id

```html
<!-- html -->
<div id="identifier"></div>
```

```css
/* css */
#identifier-name {
  height: 100px;
  width: 100px;
}
```

## Comments
```css
/* Everything within here is a comment */
```

## Common Properties
* color
* font-family
* font-size
* background-color
* background-image
* width
* height
* [CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)

# Layouts

## Box Model

![Box Model](https://mdn.mozillademos.org/files/13647/box-model-standard-small.png)

[Box Model Exercises](https://docs.google.com/document/d/1AN3cHrLX0axbf56jlZZ5_QzwZeR2LXJ1v2mFBbCIt-8/edit)

# Positioning

```css
position: absolute | fixed / sticky | relative;
```

* Static
  * default when no position is defined
* Absolute
  * based on the top left corner of the window
* Relative
  * based on the starting point of the element
* Sticky / Fixed
  * based on top left corner of the window 
  * will be in the same position regardless of scroll

[MDN Article](https://developer.mozilla.org/en-US/docs/Web/CSS/position)

[Positioning Exercises](https://docs.google.com/document/d/1AN3cHrLX0axbf56jlZZ5_QzwZeR2LXJ1v2mFBbCIt-8/edit)

# Flexbox

[MDN Article](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

[Flexbox Froggy Practice](http://flexboxfroggy.com/)

# Floats

[MDN Article](https://developer.mozilla.org/en-US/docs/Web/CSS/float)

# Specificity
Ids
Classes
inline, style, file
!important tag
Vendor prefixing
-moz-
-webkit-
-ms-
-o-

Mobile Responsive Design
What is it?
Why is it important?
Media Queries
Min-width vs max-width
Smashing Magazine Example
Breakpoints
Mobile first vs Desktop first
Testing on Browser
Resizing browser
Chrome view as mobile button
Test within target device
In order to make mobile browsers scale:
<meta name="viewport" content="width=device-width, initial-scale=1">
Mobile Responsive Exercises

CSS Animations
What is an animation?
Purpose behind using animations
Different types of animation Libraries
Greensock
Web Animation API
etc...
CSS built in libraries
Transitions
transition-property
what to change
transition-duration
how long it lasts
transition-timing-function
what movement it uses
transition-delay
how long to wait before doing
Keyframes
from
starting point
to
end point
percentages
dictate what happens at that point in the animation
Animation
animation-duration
amount of time it lasts
animation-name = keyframe name
Demos
Use cases
When it’s necessary and not just to “flex” your animation muscles
