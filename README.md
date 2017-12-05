## Mac Setup

These scripts will help you set up your Mac for Account Opening development within minutes. They are based on [this repo](https://github.com/donnemartin/dev-setup).

## Instructions

The scripts are divided in 3 main parts:

### Bootstrap
This script will copy a lot of files to the home directory. The most important file is `.functions` which defines a lot of useful functions like starting specific applications on specific ports or changing java versions. Take a look. In order to run it you should run

```bash
./.dots bootstrap
```

### Homebrew
This will install Homebrew and a few useful packages like some extensions to Quick look which will enable for example to view JSON files from the finder. This is what id does:

To run it:

```bash
./.dots brew
```

##OS X preferences
This will add some tweakings to some settings for your Mac, like setting the key repeat to a faster speed or making sure we don't write specific Mac OS X files to network drives. To run it

```bash
./.dots osx
```
