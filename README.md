[![Ninja](design/images/ninja.png)](https://github.com/kasperisager/vanilla-ninja)

# Ninja

[![GitHub version](https://badge.fury.io/gh/kasperisager%2Fvanilla-ninja.png)](http://badge.fury.io/gh/kasperisager%2Fvanilla-ninja) [![Build Status](https://travis-ci.org/kasperisager/vanilla-ninja.png)](https://travis-ci.org/kasperisager/vanilla-ninja) [![Dependency Status](https://gemnasium.com/kasperisager/vanilla-ninja.png)](https://gemnasium.com/kasperisager/vanilla-ninja)


Ninja is a super sneaky [Node.js](http://nodejs.org/), [Gulp](http://gulpjs.com/) and [Bower](http://bower.io/) powered scaffold for building superb Vanilla themes. Ninja allows you to easily use your choice of preprocessors and languages in your themes and enables you to write kick-ass build processes using the many plugins available for Gulp.

Ninja will also stealthily do browser sniffing and feature detection using [Conditionizr](https://github.com/conditionizr/conditionizr) and [Modernizr](https://github.com/Modernizr/Modernizr) and will also reload your assets whenever they change using [LiveReload](http://livereload.com/) - like a true shinobi!


## Getting started

To get started using Ninja, either:
- [Download the latest release](https://github.com/kasperisager/vanilla-ninja/releases)
- Clone the repository directly into your Vanilla `themes` directory:

```sh
$ git clone kasperisager/vanilla-ninja ninja
```

Now that you've downloaded Ninja, it's time to get it installed. Ninja uses [npm](https://npmjs.org/) for managing [development dependencies](package.json) and Bower for managing [component dependencies](bower.json):

```sh
$ npm install
$ bower install
```

### Prerequisites

The above installation instructions assume that you've already installed Node.js on your computer. If this is not the case, please download and install the latest version from the official [Node.js download page](http://nodejs.org/download/).

For Gulp.js to work, you'll need to install it. This can be done using npm - notice that Gulp must be installed globally:

```sh
$ npm install -g gulp
```

For component management, you'll need to install Bower. Just like Gulp, Bower must be installed globally:

```sh
$ npm install -g bower
```


## Compiling assets

Once you've completed all of the above steps, you should be all set to start developing Vanilla themes using Ninja. Ninja comes with a couple of built-in Gulp tasks that you can use for compiling the source:

#### Build - `gulp`
Runs the default Gulp task which will compile all assets including the Ninja scripts (`.coffee` by default) and stylesheets (`.scss` by default) as well as assets installed via Bower ([Bootstrap](https://github.com/twitter/bootstrap), Modernizr and Conditionizr by default).

#### Watch - `gulp ninja`
Starts an instance of [tiny-lr](https://github.com/mklabs/tiny-lr) (a tiny LiveReload server) that watches the compiled assets for changes and pushes these to your Vanilla installation automatically whenever they change.


## [Issue tracking](https://github.com/kasperisager/vanilla-ninja/issues)

If you come across any bugs or if you have a feature request, please file an issue using the Github Issue tracker. Ninja won't be supported through http://vanillaforums.org so please stick to using Github for inquiries about bugs and feature requests. Thanks!

[__File a new issue or feature request__](https://github.com/kasperisager/vanilla-ninja/issues/new)


## Special thanks

#### Ninja Logo
Huge thanks to [Chris Spooner](http://twitter.com/chrisspooner) of [Spoon Graphics](http://www.spoongraphics.co.uk/) for his [tutorial](http://blog.spoongraphics.co.uk/tutorials/illustrator-tutorial-create-a-gang-of-vector-ninjas) on how to create vector Ninjas in Adobe Illustrator. I absolutely suck at stuff like that so it was awesome having someone show how it's done!

---

Copyright 2014 © [Kasper Kronborg Isager](https://kasperisager.github.io). Licensed under the terms of the [MIT License](LICENSE.md)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/kasperisager/vanilla-ninja/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
