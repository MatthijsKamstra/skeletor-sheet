# TODO


### learn

- <https://medium.com/@jaejohns/how-to-use-google-sheets-as-your-website-database-b0f2f13d0396>
- <https://www.blockspring.com/blog/google-spreadsheet-as-database>
- <https://hackernoon.com/google-sheets-as-your-database-9016b9797169>
- <https://medium.freecodecamp.org/get-sheet-done-using-google-spreadsheets-as-your-data-backend-650ba23dc6d9>

### lib

- <https://www.npmjs.com/package/google-spreadsheet>
- <https://github.com/jsoma/tabletop>
- <https://www.npmjs.com/package/get-sheet-done>

--



<https://github.com/jsoma/tabletop>


vue.js and tabletop.js

https://codepen.io/mjweaver01/pen/dXqBKL


## documents


- <https://docs.google.com/spreadsheets/d/e/2PACX-1vSRy1BrMibt-UinGRUxSniWqN6ntQOC3nzM22xrGT91M-u6wf8RmiRXJvO8e3zDdvy-PsN6LUxvY3J_/pubhtml>
- <https://docs.google.com/spreadsheets/d/1KhcMZv01CfiAvCPhL8nVTXEJ2oRcLgSlj5UNX40jTsM/edit?usp=sharing>;


cvs
https://docs.google.com/spreadsheets/d/1F4v0T_q26gSzSGGDpESennsAadlMhGyLHEntYGqo5lY/edit?usp=sharing



# Neko Web Server

We will use a rarely mentioned feature from Haxe.

You can run a web-server : Neko Web Server

And the cool part is: You don't have to install anything if you already have Haxe installed.

```bash
Neko Web Server v1.0 - (c)2006-2013 Haxe Foundation
	Options :
		-p <port> : change server port
		-h <host> : change server host
		-d <dir> : change the server base directory
		-log <file> : set log file
		-rewrite : activate pseudo mod-rewrite for smart urls
```

You need the path to your files (so replace `path/to/files` with your own path) example: `path/to/files/haxejs/07pixi/code/bin/`

```bash
nekotools server -p 2000 -h localhost -d path/to/files
```

and open your browser to <http://localhost:2000>

You can also start the web-server with it's defaults (port:2000, host:localhost)

```bash
nekotools server
```

But then you have to visit the configure-page the server by going to <http://localhost:2000/server:config>

(or open your terminal in the correct folder)

Read more about Neko tools:

- <http://blog.presidentbeef.com/neko_tutorial/tools.html#nekotools>
- <http://old.haxe.org/doc/start/neko>