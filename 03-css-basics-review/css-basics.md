# CSS Basics


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

## Layouts
Box Model
Box Model Exercises
Positioning
Absolute
Fixed / Sticky
Relative
Static
Positioning Exercises
Flexbox
Flexbox Froggy
Floats
Specificity
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
