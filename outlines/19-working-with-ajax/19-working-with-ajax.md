<img src="https://images-na.ssl-images-amazon.com/images/I/51Y22eeuctL._SY355_.jpg" width="100%">

# AJAX

## Request / Response Cycle

_The request / response cycle is the back and forth that takes place when requesting a resource from a server on the internet_

When you communicate with a server you need to provide it with certain bits of information that it needs in order to do what you would like it to do:
- `url` - the location of the server on the internet
- `request method` - the type of request you are making

[Youtube: HTTP Request and Response](https://www.youtube.com/watch?v=DrI2lUXL1no)

**Note: watch until the 5:00 min mark**

## URLs

_Stands for __universal resource locator__. A URL is an address for an entity that exists on the internet._

Example:

```js
http://google.com:80/some/file.txt?page=23#about-us
```
- Can be broken down into:
  - Protocol
    - http
    - https
    - ftp
    - telnet
  - Domain name
    - www.google.com
    - www.facebook.com
  - Port number
    - 80
    - 88
    - 23
  - Path
    - /profile/orlando.caraballo
    - /gallery
  - Parameters
    - ?id=54
    - ?page=24
    - ?lat=66.33&long=41.98
  - Anchor
    - #about-us
    - #comment-45

[MDN: What is a URL](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_URL)

## Types of HTTP Request Methods

- POST - **C**reate
  - Creates data on the server
- GET - **R**ead
  - Gets data from the server
- PUT / PATCH - **U**pdate
  - Updates data on the server
- DELETE - **D**eletion
  - Deletes data on the server

## JSON

- Stands for Javascript Object Notation
- Considered a lightweight interchange format
- Used to represent data across platforms

[Spring: Understanding JSON](https://spring.io/understanding/JSON)

## HTTP Response Codes

_HTTP response codes are numbers that represent a standardized response from a server when communicating with a resource on the internet_

[MDN: HTTP Response Status Codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)

## Axios

_A modern library for handling AJAX requests_

Axios is a library that allows us to create AJAX calls to a server and then when the response is returned we can use that data to do something interesting. (i.e. retrieve data from the server and display that data on an html page)

[Axios: Github](https://github.com/axios/axios)

### Example

In this [example](https://github.com/orlandocaraballo/sei/blob/master/outlines/18-working-with-ajax/javascripts/one-at-a-time.js), I have created some json files that I am hosting on github. Each file would represent a person. You can find these files [here](https://github.com/orlandocaraballo/sei/tree/master/outlines/18-working-with-ajax/json). I use the `axios` library to retrieve this data and use that data to create an `Person` object. Once I have created this `Person` object, I use this object's properties, such as `firstName` and `age`, to display the data onto the html page.

## Promises

A promise in Javascript is an object. Much like a promise in your own life, this object represents a promise that will eventually either be resolved or rejected. The reason promise objects are utilized is to solve the problem of having to accomplish a task in code that must happen after prior task is completed. However, the key detail is that you do **NOT** know when the prior task will be completed because it is happening in the asynchronously.

`Axios` creates promises that enable a library user to execute code after the an AJAX call has been resolved. In other words, once `axios` recieves a response from the server, it will provide you with the ability to do something with that response data.

[Youtube: Javascript Promises Explained](https://www.youtube.com/watch?v=s6SH72uAn3Q)

[Medium: Understanding Promises](https://hackernoon.com/understanding-promises-in-javascript-13d99df067c1)

[MDN: Using Promises](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises)

## CORS

_CORS stands for **Cross Origin Resource Sharing**. CORS dictates what capabilities you have as a developer to access a resource that exists on the internet._

[Medium: What is CORS?](https://medium.com/@jeanpan/what-is-cors-cross-origin-resource-sharing-9f0c463621c6)

## Forms Important Attributes

When using forms, we can direct where an http request will be made by dictating certain html attributes on a form.

- action - determines where a form will submit its data
    - this is usually a url or path
- method - what type of HTTP request the form is using to submit its data
    - this can be either __POST__, __PUT / PATCH__, __GET__ or __DELETE__

### Example

In the following example when you submit this form, it will send the information typed in the `username` and `password` fields to the url `http://website.com/sign-up`.

```html
<form action="http://website.com/sign-up" method="POST">
  <input type="text" name="username">
  <input type="password" name="password">
  <input type="submit" value="Go">
</form>
```

[MDN: Sending and Recieving Form Data](https://developer.mozilla.org/en-US/docs/Learn/HTML/Forms/Sending_and_retrieving_form_data)

__Note: Read everything before "On the server side: retrieving the data"__

## Workshop

[Minimalistic Wings](https://drive.google.com/open?id=16kRKgQ06RG_WCPAKMI20wSraRkDZ4wIxbATAcy2veZY)
