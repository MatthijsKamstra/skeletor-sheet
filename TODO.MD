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


Neko Web Server
We will use a rarely mentioned feature from Haxe.

You can run a web-server : Neko Web Server

And the cool part is: You don't have to install anything if you already have Haxe installed.

Neko Web Server v1.0 - (c)2006-2013 Haxe Foundation
	Options :
		-p <port> : change server port
		-h <host> : change server host
		-d <dir> : change the server base directory
		-log <file> : set log file
		-rewrite : activate pseudo mod-rewrite for smart urls
You need the path to your files (so replace path/to/files with your own path) example: path/to/files/haxejs/07pixi/code/bin/

nekotools server -p 2000 -h localhost -d path/to/files
and open your browser to http://localhost:2000

You can also start the web-server with it's defaults (port:2000, host:localhost)

nekotools server
But then you have to visit the configure-page the server by going to http://localhost:2000/server:config

(or open your terminal in the correct folder)

Read more about Neko tools:

http://blog.presidentbeef.com/neko_tutorial/tools.html#nekotools
http://old.haxe.org/doc/start/neko