TodoListKO
==========

A simple Knockout.js demo application using Yeoman, et al.

Todos
==

- [X] Add installing/debugging/building information.
- [X] Get data from server.
- [ ] Write unit tests.
- [ ] Overhaul UI.
- [ ] Make tasks (client-side) persistant.


Installing
==

``` 
  git clone https://github.com/frxbr/TodoListKO
  cd TodoListKO
  npm install -g grunt-cli bower yo
  npm install && bower install
```

This will install all the required tools and deps for running the app.

*Note*: 
This guide assumes you have [Node.js](http://nodejs.org) and [Git](http://git-scm.com/) installed.
You should also have [Ruby](http://www.ruby-lang.org/) and [Compass](http://compass-style.org/) if you plan to use Sass.


*Quirks*: 
If you internet connection is slow (< 250kbps) some deps might not install correctly due to npm/bower hanging.
In such case try running ```npm install``` and ```bower install``` separately.

Debugging
==

```
  grunt server
```

This will serve the app directory using a development Connect server.
Any compilable asset will be compiled and served from the ```.tmp``` directory.

Building
==

```
  grunt build
```

This will:

  1. Compile all compilables. (LESS, Sass, CoffeeScript, etc.)
  2. Minify, concat and revv all assets (including the ones resulting from step 1).
  3. Package app into ```dist``` directory.
