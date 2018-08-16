<img src="api.png" style="width:100%" />

# Introduction to APIs

- Stands for __Application Programming Interface__
- Allows us to retrieve information or modify information stored on a server

## RESTful API

_A RESTful API is an API that conforms to a particular set of standards that simplify and optimize the process of retreieving information from a server._

[Smashing Magazine: Understanding using REST APIs](https://www.smashingmagazine.com/2018/01/understanding-using-rest-api/)

## API Examples

- [Star Wars](https://swapi.co/)
- [Star Trek](http://stapi.co/)
- [OMDB](http://www.omdbapi.com/)
- [Open Weather](https://openweathermap.org/api)

## API Wrappers

_An API wrapper is a library that is coded specifically for simplifying API requests to a target API_

### Examples
- [Twitter API Wrappers](https://developer.twitter.com/en/docs/developer-utilities/twitter-libraries)
- [Star Wars API](https://swapi.co/documentation)

## Endpoint

_The url you must hit in order to retrieve a specific data point from an API_

Example

```
https://swapi.co/api/people/1
```

### Examples

#### Pokemon API:

```
http://pokeapi.co/api/v2/[id]
``` 
retrieves information on a specific pokemon

#### Star Wars API:
```
people/[id]
``` 
retrieves information on a specific Star Wars character

### Root Endpoint

_The root endpoint is the starting point of the API you’re requesting from_

#### Example

Using the endpoint from the example above, the following would be the root endpoint:

```
https://swapi.co/api
```

### Path

_The path determines the resource you’re requesting for_

#### Example

Using the endpoint from the example above, the following would be the path:

```
/people/1/
```

## Forms

_Forms can allow us to retrieve data from the user to submit to an API_

HTML Attributes
- __method__ - the type of request method (only `GET` or `POST` )
- __action__ - where the information will be submitted to (e.g. http://swapi.co/people/1)

## Tools
- [Postman](https://www.getpostman.com/)
- [cURL](https://www.learnhowtoprogram.com/javascript/asynchrony-and-apis-in-javascript/testing-api-calls-with-curl)
- [Insomnia](https://insomnia.rest/)
- Chrome Network Tab

## Workshop
[Github HUD](https://docs.google.com/document/d/1DDeJw9YeEOdweDiB4YlsoP9w8wSFt9D4kGj7MqgqKxs/edit)