# Ninja [![Build Status](https://travis-ci.org/kasperisager/Ninja.png)](https://travis-ci.org/kasperisager/Ninja)

Ninja is a super sneaky Node.js, Grunt and Bower powered scaffold for building superb Vanilla themes. Ninja allows you to easily use your choice of preprocessors and languages in your themes and enables you to write kick-ass build processes using the many plugins available for Grunt.

Ninja will also stealthily do browser sniffing and feature detection using Conditionizr and Modernizr and will also reload your assets whenever they change using LiveReload - like a true shinobi!

## Getting started

To get started using Ninja, either [download the latest release](https://github.com/kasperisager/Ninja/archive/master.zip) or clone the repository directly into your Vanilla `themes` directory:

```sh
$ git clone git://github.com/kasperisager/Ninja.git
```

Now that you've downloaded Ninja, it's time to get it installed. As Ninja is powered entirely by Node.js, installation is as simple as:

```sh
$ npm install
```

You may also want to install the Bower components that bundles with Ninja:

```sh
$ bower install
```

Ninja does make a few assumptions about your existing development environment:

* You've already installed and use the Grunt CLI
```sh
$ npm install -g grunt-cli
```
