# Ninja [![Build Status](https://travis-ci.org/kasperisager/Ninja.png)](https://travis-ci.org/kasperisager/Ninja)

Ninja is a super sneaky Node.js, Grunt and Bower powered scaffold for building superb Vanilla themes. Ninja allows you to easily use your choice of preprocessors and languages in your themes and enables you to write kick-ass build processes using the many plugins available for Grunt.

Ninja will also stealthily do browser sniffing and feature detection using Conditionizr and Modernizr and will also reload your assets whenever they change using LiveReload - like a true shinobi!

## Getting started

To get started using Ninja, either:
* [Download the latest release](https://github.com/kasperisager/Ninja/archive/master.zip)
* Clone the repository directly into your Vanilla `themes` directory:  
`$ cd /path/to/vanilla/themes/`  
`$ git clone git://github.com/kasperisager/Ninja.git`

Now that you've downloaded Ninja, it's time to get it installed. Ninja uses npm for managing development dependencies and Bower for managing component dependencies:

```sh
$ npm install
$ bower install
```

Ninja does make a few assumptions about your existing development environment:

* You've already installed and use the Grunt CLI:  
`$ npm install -g grunt-cli`
* If you want to use compilers that aren't written in Node.js and available through npm, you've already installed these. This is the case for e.g. Compass:  
`$ gem install compass`

---
Copyright 2013 [Kasper K. Isager](https://github.com/kasperisager). Licensed under the terms of the MIT License
