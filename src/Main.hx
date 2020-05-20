package;

import js.Browser;
import js.Browser.*;
import js.html.*;
import js.html.Storage;
import model.constants.App;
import vue.Vue;
import js.Tabletop;

/**
 * @author Matthijs Kamstra aka [mck]
 * MIT
 */
class Main {
	var publicSpreadsheetUrl = 'https://docs.google.com/spreadsheets/d/1KhcMZv01CfiAvCPhL8nVTXEJ2oRcLgSlj5UNX40jTsM/edit?usp=sharing';
	var vm:Vue;

	// content array
	var contentArray:Array<{}> = [];

	// storage
	var hasStorage:Bool = false;
	var storageName = 'skeletor';

	public var storage(get, set):String;

	private var _storage:String = null;

	public function new() {
		document.addEventListener("DOMContentLoaded", function(event) {
			console.log('Dom ready :: build: ${App.getBuildDate()} ');

			/**
			 *  first check if we visited the site before, then use that data first.
			 *  then update anyway, just to show the latest data
			 */

			// check for localStorage data
			if (storage != null)
				trace('hasStorage : ${hasStorage}');

			trace(Template.createVue());

			initHomepage();
			initTabletop();
		});
	}

	function initHomepage() {
		vm = new Vue({
			el: '#app',
			data: {
				showloading: !hasStorage,
				sheet: contentArray,
				message: 'Content from this page from google spreadsheet and vue.js'
			}
		});
	}

	function initTabletop() {
		Tabletop.init({
			key: publicSpreadsheetUrl,
			callback: showInfo,
			simpleSheet: true
		});
	}

	function showInfo(data, tabletop) {
		// Browser.alert('Successfully updated!');
		showSnackbar('Successfully updated!');
		// console.log(data);
		vm.showloading = false;
		vm.sheet = data;
		storage = data;
	}

	/**
	 *  @param isDark -
	 */
	function showLoading(isLoading:Bool, isDark:Bool = false) {
		// Get the loading DIV
		var x = document.getElementById("loading");

		// if no #loading exists, create it
		if (x == null) {
			var div = document.createDivElement();
			div.id = 'loading';
			// div.innerHTML = '<i class="fa fa-refresh fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>';
			div.innerHTML = '<i class="fas fa-sync-alt fa-spin fa-3x"></i><span class="sr-only">Loading...</span>';
			// div.innerHTML = '<i class="fas fa-spinner fa-pulse"></i>';
			document.body.appendChild(div);
			x = div;
		}

		if (isLoading) {
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
		if (x == null) {
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
		untyped setTimeout(function() {
			x.className = x.className.replace("show", "");
		}, 3000);
	}

	// ____________________________________ getter/setter ____________________________________

	function get_storage():String {
		if (window.localStorage.getItem(storageName) != null) {
			_storage = window.localStorage.getItem(storageName);
			contentArray = haxe.Json.parse(_storage).data;
			hasStorage = true;
		}
		return _storage;
	}

	function set_storage(value:String):String {
		var obj = {
			date: Date.now(),
			data: value
		}
		window.localStorage.setItem(storageName, haxe.Json.stringify(obj));
		contentArray = haxe.Json.parse(haxe.Json.stringify(value));
		hasStorage = true;
		return _storage = value;
	}

	static public function main() {
		var app = new Main();
	}
}
