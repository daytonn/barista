Barista
=======

![](https://raw.githubusercontent.com/daytonn/barista/master/barista.jpg)

Do you use [Homebrew](http://brew.sh) to install mac packages? Are you sick and tired of forgetting to type update before accidentally installing an old package? If so, Barista is for you!

Features
--------

* Automatically `update` before every `install` or `upgrade`
* Automatically `cleanup` after every `install` of `upgrade`
* Save a cache of all your brewed applications to easily reinstall later
* Reinstall cached applications with one command

Installation
------------

### Installation with baptize:

Clone into plugins

```sh
git clone git@github.com:daytonn/barista.git ~/.baptize/plugins/barista
```

Reload your baptize environment:

```sh
baptize repent (or reload)
```

### Standalone:

Clone into wherever:

```sh
git clone git@github.com:daytonn/barista.git
```

Source `barista.sh` in your shell config file:

```sh
source ~/path/to/barista/barista.sh
```

Configuration
-------------

The following environment variables are used to configure Barista's behavior:

### $BARISTA\_CACHE\_INSTALLED
_default: yes*_

Tells Barista whether or not to save a list of all the installed applications to a file.


### $BARISTA\_AUTO\_UPDATE
_default: yes*_

Tells Barista whether or not to automatically run an `update` before each `install` or `upgrade`.

### $BARISTA\_AUTO\_CLEANUP
_default: yes*_

Tells Barista whether or not to automatically run a `cleanup` after each `install` or `upgrade`.

### $BARISTA\_CACHE\_FILE
*default: brewed_apps.txt*

Tells Barista the name of the file name use when saving installed apps.

### $BARISTA\_CACHE\_DIR

Tells Barista the directory where the cache file will be stored. It defaults to the Barista directory, wherever it's installed. 

*_anything other than "yes" will turn off this feature_