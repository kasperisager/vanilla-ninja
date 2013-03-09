![Ninja](src/images/ninja.png)

# Ninja [![Build Status](https://travis-ci.org/kasperisager/Ninja.png)](https://travis-ci.org/kasperisager/Ninja) [![Dependency Status](https://gemnasium.com/kasperisager/Ninja.png)](https://gemnasium.com/kasperisager/Ninja)

Ninja is a super sneaky Node.js, Grunt and Bower powered scaffold for building superb Vanilla themes. Ninja allows you to easily use your choice of preprocessors and languages in your themes and enables you to write kick-ass build processes using the many plugins available for Grunt.

Ninja will also stealthily do browser sniffing and feature detection using Conditionizr and Modernizr and will also reload your assets whenever they change using LiveReload - like a true shinobi!


## Getting started

To get started using Ninja, either:
* [Download the latest release](https://github.com/kasperisager/Ninja/archive/master.zip)
* Clone the repository directly into your Vanilla `themes` directory:  
`$ cd /path/to/vanilla/themes/`  
`$ git clone git://github.com/kasperisager/Ninja.git`

Now that you've downloaded Ninja, it's time to get it installed. Ninja uses npm for managing [development dependencies](package.json) and Bower for managing [component dependencies](component.json):

```sh
$ npm install
$ bower install
```

### Prerequisites

Ninja does make a few assumptions about your existing development environment:

* You've already installed and use the Grunt CLI:  
`$ npm install -g grunt-cli`
* If you want to use compilers that aren't available through npm, you've already installed these.  
This is the case for e.g. Compass, which is used in Ninja by default:  
`$ gem update --system`  
`$ gem install compass`


## Compiling assets

Once you've completed all of the above steps, you should be all set to start developing Vanilla themes using Ninja. Ninja comes with a couple of built-in Grunt tasks that you can use for compiling the source:

#### build - `grunt`
Runs the default Grunt task which will compile all assets including the Ninja scripts (`.coffee` by default) and stylesheets (`.sass` by default) as well as assets installed via Bower ([Bootstrap](https://github.com/twitter/bootstrap), [Modernizr](https://github.com/Modernizr/Modernizr) and [Conditionizr](https://github.com/conditionizr/conditionizr) by default).

#### watch - `grunt ninja`
Starts an instance of Reloadr (a basic LiveReload CLI) that watches the compiled assets for changes and pushes these to your Vanilla installation automatically and runs the `watch` tasks that watches your source assets and compiles these whenever they change.


## Special thanks

#### Ninja Logo
Huge thanks [Chris Spooner](http://twitter.com/chrisspooner) of [Spoon Graphics](http://www.spoongraphics.co.uk/) for his [tutorial](http://blog.spoongraphics.co.uk/tutorials/illustrator-tutorial-create-a-gang-of-vector-ninjas) on how to create vector Ninjas in Adobe Illustrator. I absolutely suck at stuff like that so it was awesome having someone show how it's done!

---
Copyright © 2013 [Kasper K. Isager](https://github.com/kasperisager). Licensed under the terms of the [MIT License](LICENSE.md)
