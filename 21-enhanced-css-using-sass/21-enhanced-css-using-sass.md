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

## Exercises

Given the following html:
```html
<main>
  <article>
    <h1>Ingles sin Barreras</h1>
    <p>
      <strong class="large">Hola</strong>
      <span>¡Como Estas!</span>
    </p>
  </article>

  <aside>
    <h2>En el lado</h2>
    <p class="large"> 
      Estamos en la matriz
    </p>
  </aside>
</main>
```

Write scss code that does the following:
- Targets the span and changes the text color to `#63458A`
  - What other ways can we target this?
  - If we wanted to set the `h2` to the same color how would we do this?
  - How can we use `.scss` to make this more DRY?
- Targets every element with the class large and sets the font size to `20px`
  - What other ways can we target this?
  - Which method is most efficient?
- If we had to set some default fonts and colors for the page, how can we rearrange our code to make it more organized?

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

## Exercises

Given the following:

```scss
.thin-shadow {
  box-shadow: 1px 1px 1px black;
}

table td {
  color: grey;
  font-size: 12px;
  border-radius: 2px;
  border: 1px solid blue;
  font-family: Raleway, sans-serif;
}

h4 {
  font-family: Raleway, sans-serif;
  color: cyan;
  font-size: 12px;
}

.strong-shadow {
  box-shadow: 3px 3px 3px black;
}

```

- How would we DRY up this code?

## Tools

- [Koala](http://koala-app.com/)
- [Sassmeister](https://www.sassmeister.com/)
- [Bourbon](https://www.bourbon.io/)

## Resources

- [Sass](https://sass-lang.com/)
- [Sitepoint: 8 Tips for Sass](https://www.sitepoint.com/8-tips-help-get-best-sass/)

## Workshop

[Sassy Tractors](https://drive.google.com/open?id=1cXUKDKaV3hIg1hgMNsNJrEnYKJyyCfdqul2ORLiUPiI)
