TodoListKO
==========

A simple Knockout.js demo application using Yeoman, et al.

Installing
==

*Note*: This guide assumes you have [Node.js](http://nodejs.org) and [Git](http://git-scm.com/) installed.
``` 
  git clone https://github.com/frxbr/TodoListKO
  cd TodoListKO
  npm install -g grunt-cli bower yo
  npm install && bower install
```
This will install all the required tools and deps for running the app.

*Quirks*: If you internet connection is slow (< 250kbps) some deps might not install correctly due to npm/bower hanging.
In such case try running ```npm install``` and ```bower install``` separately.

Running
==
```
  grunt server
```
