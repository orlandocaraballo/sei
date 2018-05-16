<img src="web-security.png" width="100%">

# Web Security

_Web security is the act of securing your web application from malicious behavior_

Before we begin we need to establish the following -> **Security is a moving target**

**Note:** You will never be fully protected, only more secure than completely insecure

## Common Web Attacks

## CSRF

_Cross site request forgery (CSRF), also known as XSRF, Sea Surf or Session Riding, is an attack vector that tricks a web browser into executing an unwanted action in an application to which a user is logged in._

[Example](https://www.incapsula.com/web-application-security/csrf-cross-site-request-forgery.html)

## XSS

_Cross-site scripting (XSS) is a code injection attack that allows an attacker to execute malicious JavaScript in another user's browser._

[Example](https://excess-xss.com/)

## DDoS

_A Distributed Denial of Service (DDoS) attack is an attempt to make an online service unavailable by overwhelming it with traffic from multiple sources. They target a wide variety of important resources, from banks to news websites, and present a major challenge to making sure people can publish and access important information._

[Digital Attack Map: Understanding DDOS](https://www.digitalattackmap.com/understanding-ddos/)

## Session Hijacking

_Session hijacking occurs when a session token is sent to a client browser from the Web server following the successful authentication of a client logon. A session hijacking attack works when it compromises the token by either confiscating or guessing what an authentic token session will be, thus acquiring unauthorized access to the Web server._

[Infosec Institute: Session Hijacking Cheat Sheet](http://resources.infosecinstitute.com/session-hijacking-cheat-sheet/#gref)

## Phishing

_Phishing is a cyber attack that uses disguised email as a weapon. The goal is to trick the email recipient into believing that the message is something they want or need — a request from their bank, for instance, or a note from someone in their company — and to click a link or download an attachment._

[Examples](https://www.tripwire.com/state-of-security/security-awareness/6-common-phishing-attacks-and-how-to-protect-against-them/)

## Passwords Attacks

Choosing good passwords
Two Step Authentication

### Brute force

_Brute force password attacks involves a hacker using a computer program or script to try to log in with possible password combinations, usually starting with the easiest-to-guess passwords._

### Dictionary

_Dictionary password attacks involve a hacker using a program or script to try to login by cycling through combinations of common words._

### Keylogger

_Keylogger attacks involve a hacker using a program to track all of a user’s keystrokes._

### Lookup Tables, Reverse Lookup Tables, Salt + Hash

[CrackStation: Hashing Security](https://crackstation.net/hashing-security.htm)

## SQL Injection

_SQL injection (SQLi) is an application security weakness that allows attackers to control an application’s database – letting them access or delete data, change an application’s data-driven behavior, and do other undesirable things – by tricking the application into sending unexpected SQL commands._

## Environment Variables

Store sensitive information in Environment Variables such as:
- API Keys
- Username / password credentials