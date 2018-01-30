var publicSpreadsheetUrl = 'https://docs.google.com/spreadsheets/d/1KhcMZv01CfiAvCPhL8nVTXEJ2oRcLgSlj5UNX40jTsM/edit?usp=sharing';

function init() {
	Tabletop.init(
		{
			key: publicSpreadsheetUrl,
			callback: showInfo,
			simpleSheet: true
		}
	);
};

function showInfo(data, tabletop) {
	alert('Successfully processed!')
	console.log(data);
}

window.addEventListener('DOMContentLoaded', init)