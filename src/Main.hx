package;

import js.Browser.*;
import js.Browser;
import js.html.*;

import vue.Vue;

import model.constants.App;

import js.Tabletop;

/**
 * @author Matthijs Kamstra aka [mck]
 * MIT
 *
 */
class Main {

	var container:Dynamic;

	var loading : Vue;
	var app : Vue;
	var example1 : Vue;
	var example2 : Vue;

	var publicSpreadsheetUrl = 'https://docs.google.com/spreadsheets/d/1KhcMZv01CfiAvCPhL8nVTXEJ2oRcLgSlj5UNX40jTsM/edit?usp=sharing';

	public function new () {
		trace( "Hello 'Example Javascript'" );
		document.addEventListener("DOMContentLoaded", function(event) {
			console.log('Dom ready :: build: ${App.BUILD} ');
			initTabletop();
			// initPageAbout ();
		});
	}

	function initTabletop(){
		Tabletop.init(
			{
				key: publicSpreadsheetUrl,
				callback: showInfo,
				simpleSheet: true
			}
		);
	}


	function showInfo(data, tabletop) {
		// Browser.alert('Successfully processed!');
		showSnackbar('Successfully processed!');
		console.log(data);
		initPageAbout();
	}


	function initPageAbout (){
		new Vue({
			el: '#app',
			data: {
				message: 'Hello to ${App.PROJECT_NAME}!',
				items: [
					{ message: 'Something clever as point one' },
					{ message: 'But more important is point two' }
				]
			}
		});
		showLoading(true);
		// After 3 seconds, remove the show class from DIV
		untyped setTimeout(function(){
			showLoading(false);
		}, 3000);
	}


	function initVue(){
		loading = new Vue({
			el: '#loadingssss',
			data: {
				showloading: true
			}
		});
		app = new Vue({
			el: '#appss',
			data: {
				message: 'Hello Vue.js!'
			}
		});
		if(document.getElementById('example-1sss') != null){
			example1 = new Vue({
				el: '#example-1',
				data: {
					items: [
						{ message: 'Foo' },
						{ message: 'Bar' }
					]
				}
			});
		}
		if(document.getElementById('example-2ssss') != null){
			example2 = new Vue({
				el: '#example-2',
				data: {
					items: [
						{ message: '1Foo' },
						{ message: '2Bar' }
					]
				}
			});
		}



		Vue.component('todo-item', {
			props: ['todo'],
			template: '<li>{{ todo.text }}</li>'
		});
		Vue.component('reaction-item', {
			props: ['react'],
			template: '<span class="badge badge-primary bigger-badge">{{ react.name }} {{ react.count }}</span>'
		});
		var app7 = new Vue({
			el: '#app-7',
			data: {
				groceryList: [
					{ id: 0, text: 'Vegetables' },
					{ id: 1, text: 'Cheese' },
					{ id: 2, text: 'Whatever else humans are supposed to eat' }
				],
				reactions: [
					{ "name": "+1", "users": [ "U2XFA5KM4", "U02BA6Q72" ], "count": 2 },
					{ "name": "-1", "users": [ "U2XFA5KM4" ], "count": 1 }
				]
			},
			computed: {
				totalMarks: function() {
					var total = 100;
					return total;
				}
			}
		});
	}


	/**
	 *  @param isDark -
	 */
	function showLoading(isLoading:Bool,isDark:Bool = false) {
		// Get the loading DIV
		var x = document.getElementById("loading");

		// if no #loading exists, create it
		if(x == null){
			var div = document.createDivElement();
			div.id = 'loading';
			// div.innerHTML = '<i class="fa fa-refresh fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>';
			div.innerHTML = '<i class="fas fa-sync-alt fa-spin fa-3x"></i><span class="sr-only">Loading...</span>';
			// div.innerHTML = '<i class="fas fa-spinner fa-pulse"></i>';
			document.body.appendChild(div);
			x = div;
		}

		if(isLoading){
			// Add the "show" class to DIV
			x.className = "show";
		} else {
			x.className = "hide";
		}
	}

	function showSnackbar(msg:String) {
		// Get the snackbar DIV
		var x = document.getElementById("snackbar");

		// if no #snackbar exists, create it
		if(x == null){
			var div = document.createDivElement();
			div.id = 'snackbar';
			document.body.appendChild(div);
			x = div;
		}

		// set msg to snackbar
		x.innerText = msg;

		// Add the "show" class to DIV
		x.className = "show";

		// After 3 seconds, remove the show class from DIV
		untyped setTimeout(function(){
			x.className = x.className.replace("show", "");
		}, 3000);

	}


	function init() {

			// var container = document.getElementById("prop");
			// container.innerHTML = 'html';

			initHTML();
			loadData();
	}


	function initHTML () {
		container = document.createDivElement();
		container.id = "example_javascript";
		container.className = "container";
		document.body.appendChild(container);

		var h1 = document.createElement('h1');
		h1.innerText = "Example Javascript";
		container.appendChild(h1);
	}

	function loadData(){
		var url = 'http://ip.jsontest.com/';
		var req = new haxe.Http(url);
		// req.setHeader('Content-Type', 'application/json');
		// req.setHeader('auth', '${App.TOKEN}');
		req.onData = function (data : String) {
			try {
				var json = haxe.Json.parse(data);
				trace (json);
			} catch (e:Dynamic){
				trace(e);
			}
		}
		req.onError = function (error : String) {
			trace('error: $error');
		}
		req.onStatus = function (status : Int) {
			trace('status: $status');
		}
		req.request(true);  // false=GET, true=POST
	}

	static public function main () {
		var app = new Main ();
	}
}
