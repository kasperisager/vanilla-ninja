![Ninja](src/images/ninja.png)

# Ninja [![Build Status](https://travis-ci.org/kasperisager/Ninja.png)](https://travis-ci.org/kasperisager/Ninja) [![Dependency Status](https://gemnasium.com/kasperisager/Ninja.png)](https://gemnasium.com/kasperisager/Ninja)

Ninja is a super sneaky [Node.js](http://nodejs.org/), [Grunt](http://gruntjs.com/) and [Bower](http://twitter.github.com/bower/) powered scaffold for building superb Vanilla themes. Ninja allows you to easily use your choice of preprocessors and languages in your themes and enables you to write kick-ass build processes using the many [plugins available for Grunt](http://gruntjs.com/plugins).

Ninja will also stealthily do browser sniffing and feature detection using [Conditionizr](https://github.com/conditionizr/conditionizr) and [Modernizr](https://github.com/Modernizr/Modernizr) and will also reload your assets whenever they change using [LiveReload](http://livereload.com/) - like a true shinobi!


## Getting started

To get started using Ninja, either:
- [Download the latest release](https://github.com/kasperisager/Ninja/archive/master.zip)
- Clone the repository directly into your Vanilla `themes` directory:  
`$ cd /path/to/vanilla/themes/`  
`$ git clone git://github.com/kasperisager/Ninja.git`

Now that you've downloaded Ninja, it's time to get it installed. Ninja uses [npm](https://npmjs.org/) for managing [development dependencies](package.json) and Bower for managing [component dependencies](component.json):

```sh
$ npm install
$ bower install
```

### Prerequisites

The above installation instructions assume that you've already installed Node.js on your computer. If this is not the case, please download and install the latest version from the official [Node.js download page](http://nodejs.org/download/).

For Grunt.js to work, you'll need to install [Grunt CLI](https://github.com/gruntjs/grunt-cli). This can be done using npm - notice that Grunt CLI must be installed globally:

```sh
$ npm install -g grunt-cli
```

For component management, you'll need to install Bower. Just like Grunt CLI, Bower must be installed globally:

```sh
$ npm install -g bower
```

Lastly, if you want to use compilers and frameworks that aren't written in Node.js and therefore available through npm, you'll need to install these. This is the case for the Compass Framework, which is used in the Ninja example theme:  
```sh
$ gem update --system
$ gem install compass
```


## Compiling assets

Once you've completed all of the above steps, you should be all set to start developing Vanilla themes using Ninja. Ninja comes with a couple of built-in Grunt tasks that you can use for compiling the source:

#### build - `grunt`
Runs the default Grunt task which will compile all assets including the Ninja scripts (`.coffee` by default) and stylesheets (`.sass` by default) as well as assets installed via Bower ([Bootstrap](https://github.com/twitter/bootstrap), Modernizr and Conditionizr by default).

#### watch - `grunt ninja`
Starts an instance of [Reloadr](https://npmjs.org/package/grunt-reloadr) (a basic LiveReload CLI) that watches the compiled assets for changes and pushes these to your Vanilla installation automatically and runs the `watch` tasks that watches your source assets and compiles these whenever they change.


## Issue tracking

If you come across any bugs or if you have a feature request, please [file an issue](https://github.com/kasperisager/Ninja/issues) using the Github Issue tracker. Ninja won't be supported through http://vanillaforums.org so please stick to using Github for inquires about bugs and feature requests. Thanks!


## Special thanks

#### Ninja Logo
Huge thanks to [Chris Spooner](http://twitter.com/chrisspooner) of [Spoon Graphics](http://www.spoongraphics.co.uk/) for his [tutorial](http://blog.spoongraphics.co.uk/tutorials/illustrator-tutorial-create-a-gang-of-vector-ninjas) on how to create vector Ninjas in Adobe Illustrator. I absolutely suck at stuff like that so it was awesome having someone show how it's done!

---
Copyright © 2013 [Kasper K. Isager](https://github.com/kasperisager). Licensed under the terms of the [MIT License](LICENSE.md)
