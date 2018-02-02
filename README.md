# Skeletor-Sheet

![](skeletor.jpg)

I needed a quick prototype with a Google Spreadsheet as database

It seems a good idea to make a skeleton project for this.


## Desciption project

this is a bootstrap project for a quick website with a Google Spreadsheet "database"

- [Haxe](http://www.haxe.org) The Cross-platform Toolkit for transpiling to javascript [more](READ_HAXE.MD)
- [Bootstrap v4.0.0](https://getbootstrap.com/) for css framework
- [Fontawesome v5](https://fontawesome.com) for nice icons
- [Google Spreadsheets](https://docs.google.com/spreadsheets/u/0/)
- [Vue.js](https://vuejs.org/) a progressive framework for building user interfaces.
- [sass](http://sass-lang.com/) CSS with superpowers
- [LiveReload chrome extension](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei?hl=en)
- [Neko webserver](README_NEKO.MD) is a Haxe related web server, but any server should work

## TODO

- [ ] `Haxe` only vs `js` only
- [ ] `neko` vs "other" server solution
- [x] automatic build / watch
- [x] store temp values in local storage
- [x] bootstrap/fontawesome/default css
- [x] google sheet + js lib to get data
- [x] vue.js for template
- [x] info about Haxe and Neko

## Json definition aka AST

Easy way to make AST files for `.json`

<http://matthijskamstra.github.io/hxjsondef/>

## Install

Normally you can install with

```bash
haxelib install
```

But some stuff that doesn't install automaticly by haxelib.
You can fix that with the following commands

```bash
# haxe-js-kit for externs
haxelib git js-kit https://github.com/clemos/haxe-js-kit.git haxelib

# I sometimes use my personal set haxe-externs
haxelib git hxexterns https://github.com/MatthijsKamstra/hxexterns.git

# cutting edge vue.js externs
haxelib git vue https://github.com/MatthijsKamstra/Vue.hx.git
```


## Files

```
- package.json (a lot of automation)
+ bin
+ docs
+ src
+ styles
```

## vscode

To make it work with vscode you need build files without:

- c
- v



## sources




