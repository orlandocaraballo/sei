![Sass](sass.png)

# Introduction to Enhanced CSS

## CSS Review (Brief)

```html
<p>Hello my name is Orlando</p>
```

```css
/* the p is a selector choosing the paragraph tag */
p {
  /* 
    the following is a ruleset 
    that changes the text color to blue
  */
  color: blue;
}
```

## What is a preprocessor?

_A preprocessor is a program that processes its input data to produce output that is used as input to another program_

## What is a CSS preprocessor?

_A CSS preprocessor processes the more expressive Sass or Less code and transforms it into css code for use on an html page_

## Why use Sass?

- We gain a lot more flexibility at the cose of a slightly more complexity
- DRYness

## Sass Syntax

- Rulesets
- Nesting
- Variables
- Partials
- @import

## More Advanced Features

### Placeholders

_Placeholders allow us to DRY up our scss code by giving us the ability to reuse properties in more than one place_

```scss
// defines a placeholder with the name background-image
%background-image {
  width: 100%;
  background-position: center center;
  background-size: cover;
  background-repeat: no-repeat;
}

.image-one {
  // copies the code from the placeholder into this class
  @extend %background-image;
  background-image: url("/img/image-one.jpg");
}

.image-two {
  // copies the code from the placeholder into this class
  @extend %background-image;
  background-image: url("/img/image-two.jpg");
}
```

Compiles to

```scss
.image-one, .image-two {
    width: 100%;
    background-position: center center;
    background-size: cover;
    background-repeat: no-repeat;
}

.image-one {
    background-image:url("/img/image-one.jpg") ;
}

.image-two {
    background-image:url("/img/image-two.jpg") ;
}
```

### Mixins

_Mixins allow us to reuse code that requires input data to define our code_

- With parameters
- Without parameters
- Avoid using mixins with no parameters (use placeholders)

```scss
@mixin rounded-corner($radius) {
  -moz-border-radius: $radius;
  -webkit-border-radius: $radius;
  border-radius: $radius;  
}

.tab-button {
  @include rounded-corner(5px); 
}

.submit-button {
  @include rounded-corner(8px); 
}
```

Compiles to

```scss
.tab-button {
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;  
}

.submit-button {
  -moz-border-radius: 8px;
  -webkit-border-radius: 8px;
  border-radius: 8px;
}
```

## Tools

- [Koala](http://koala-app.com/)
- [Sassmeister](https://www.sassmeister.com/)
- [Bourbon](https://drive.google.com/open?id=1cXUKDKaV3hIg1hgMNsNJrEnYKJyyCfdqul2ORLiUPiI)

## Resources

- [Sass](https://sass-lang.com/)
- [Sitepoint: 8 Tips for Sass](https://www.sitepoint.com/8-tips-help-get-best-sass/)

## Workshop

[Sassy Tractors](https://drive.google.com/open?id=1cXUKDKaV3hIg1hgMNsNJrEnYKJyyCfdqul2ORLiUPiI)
