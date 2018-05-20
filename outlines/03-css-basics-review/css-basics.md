# CSS Basics

## Adding to HTML

### Inline

```html
  <span style="color: red" />
```

### Style

```html
  <head>
    color: blue;
  </head>
```

### File

```html
  <link href="main.css">
```

### Rulesets

![Image of Yaktocat](https://en-support.files.wordpress.com/2011/09/css-selectors-lrg.png)

* Selectors target elements on an html page
* Declarations encompass one or more properties with assigned values
* Properties identify what is being styled
* Values define how a property is being styled


## Selectors

### Individual
```css
span { color: red; }
```

### Multiple

```css
span, div { color: green; }
```

Attributes
* Values

### Class

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

### Id

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

### Comments
```css
/* Everything within here is a comment */
```

### Common Properties
* color
* font-family
* font-size
* background-color
* background-image
* width
* height
* [CSS Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference)

## Layouts

### Box Model

![Box Model](https://mdn.mozillademos.org/files/13647/box-model-standard-small.png)

#### Box Model Exercise

##### Setup

Create a new folder in their class directory called CSS-practice and make a new HTML called index.html and a CSS file called styles.css. Make sure they are linked properly linked together.

##### Instructions
1. Make a div with an id of "container" and give it a height of 400px.
2. Within that div, make 3 smaller divs with a class of "box".
3. Give the boxes a width equal to one quarter of the size of the parent div and a height of 300px. 
4. Next, give these elements a display property which will display the divs in a single line.
5. Let's give the boxes some padding of 10px as well.
6. Center your boxes.
7. These boxes look a little crammed together so let's give them a margin on the left and on the right of 20px. Try using the margin attribute instead of margin-left and margin-right.
8. Give each div some lorem ipsum text of your choice and resize the text to be 10% larger.


### Positioning

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

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/position)

#### Positioning Exercise

##### Setup

Use the same folder as the prior exercise

##### Instructions

Replicate the following four box mockups using positioning: 
https://imgur.com/a/4WJv5 

_Note: Boxes are 150px by 150px_

### Flexbox

[MDN Reference](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

[Flexbox Froggy Practice](http://flexboxfroggy.com/)

[Flexbox Defense](http://www.flexboxdefense.com/)

## Floats

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/float)

## Specificity

CSS will decide which styles to "take" when reading a stylesheet in the following order. 

1. Type selectors (e.g., h1) and pseudo-elements (e.g., ::before).
2. Class selectors (e.g., .example), attributes selectors (e.g., [type="radio"]) and pseudo-classes (e.g., :hover).
3. ID selectors (e.g., #example).

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity)


## Vendor prefixing

The following prefixes are used to target specific browsers:
* `-moz-` (firefox)
* `-webkit-` (chrome, safari)
* `-ms-` (microsoft ie, edge)
* `-o-` (opera)

## Mobile Responsive Design

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries)

[Smashing Magazine Example](https://www.smashingmagazine.com/2018/03/comprehensive-website-planning-guide-part3/)

[Mobile vs Desktop First](https://themeover.com/mobile-first-vs-desktop-first-responsive-design/)

Testing on Browser
* Resizing browser
* Chrome view as mobile button
* Test within target device

To scale properly on mobile device:

```html
<meta name="viewport" content="width=device-width, initial-scale=1">
```

[Mobile Responsive Exercises](https://docs.google.com/document/d/1AN3cHrLX0axbf56jlZZ5_QzwZeR2LXJ1v2mFBbCIt-8/edit)

#### Exercise

##### Setup

Use the same folder as the prior exercises

##### Instructions

Create the following Media Queries:
1. For a laptop screen of min-width of 313 px and max-width of 513 px. 
2. For a phone screen of max width of 480 px and orientation is landscape

## Animations

Different types of Animation Libraries
* [Greensock](https://greensock.com/)
* [Web Animation API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API/Using_the_Web_Animations_API)
* CSS Animations

### CSS Animations

There are two major ways to run animations using CSS:
1. Transitions
2. Keyframes

#### Transitions

**By far the simplest way**

Properties to Modify:
* `transition-property` - what to change
* `transition-duration` - how long it lasts
* `transition-timing-function` - what movement it uses
* `transition-delay` - how long to wait before doing the thing

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Transitions/Using_CSS_transitions)

[CSS Transitions Explained](https://zellwk.com/blog/css-transitions/)

#### Keyframes

**A little more challenging to understand but more powerful**

Requires the creation of an keyframe group using the `@keyframes` keyword like so:

```css
@keyframes fadeOut { ... }
```

Where `fadeOut` can be replaced with any name you would like.

Keyframes Properties to Modify:
* `from` - starting point
* `to` - end point
* `%` values - dictate the properties at specific intervals

Ruleset Properties to Modify:
* `animation` - animation to be used
* `animation-duration` - how long the animation will last

```css
/* simple example */
@keyframes fadeOut {
  from {
    opacity: 1;
  }

  to {
    opacity: 0;
  }
}

div {
  animation: fadeOut;
  animation-duration: 1s;
}
```

^ Would run the `fadeOut` keyframe on any div

```css
/* percentage example */
@keyframes fadeOut {
  0% {
    opacity: 1;
  }

  33% {
    opacity: .6;
  }

  66% {
    opacity: .3
  }

  100% {
    opacity: 0;
  }
}

div {
  animation: fadeOut;
  animation-duration: 1s;
}
```

^ Would run the `fadeOut` keyframe on any div but specifying properties on 4 different intervals

[MDN Reference](https://developer.mozilla.org/en-US/docs/Web/CSS/@keyframes)

[CSS Animations Explained](https://zellwk.com/blog/css-animations/)

## Use cases

* Use restraint
* Decide to use animations after the app is already functioning
* When it’s necessary and not just to “flex” your animation muscles
