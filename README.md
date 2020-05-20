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

## Google sheets

[source](https://medium.com/@jaejohns/how-to-use-google-sheets-as-your-website-database-b0f2f13d0396)

`File > Publish to the web`

Make sure you have entire document selected in the dropdown option. You can choose to automatically publish changes by checking the feature on the bottom. If you don’t do this, you will have to publish the spreadsheet every time you make a change.

For this example used document. First url is the 'web-publish' version that doesn't work. The second is the 'shared' document url, that works

- <https://docs.google.com/spreadsheets/d/e/2PACX-1vSRy1BrMibt-UinGRUxSniWqN6ntQOC3nzM22xrGT91M-u6wf8RmiRXJvO8e3zDdvy-PsN6LUxvY3J_/pubhtml>
- <https://docs.google.com/spreadsheets/d/1KhcMZv01CfiAvCPhL8nVTXEJ2oRcLgSlj5UNX40jTsM/edit?usp=sharing>;

## vscode

To make it work with vscode you need build files without:

- c
- v

## sources
