var app = angular.module('cartApp', []);

app.controller('WantToSellController', ['$scope', function($scope) {

	var product = this;

	product.brands = ['Motorola', 'Sony'];

	product.models = [];

	product.showModels = false;

	product.accessories =  [{'text' : 'Battery', 'checked' : "checked", 'icon' : 'battery-half'},
							{'text' : 'Charger', 'checked' : 'checked', 'icon' : 'plug'},
							{'text' : 'Earphone', 'checked' : 'checked', 'icon' : 'headphones'},
							{'text' : 'Data cable', 'checked' : 'checked', 'icon' :'usb'}]

	product.months = ['Jan','Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

	product.years = function(){ var years = [];for(var i = 2016; i >= 2009; i--) years.push(i); return years;}

	$scope.changeBrandModel = function(){
		
		var brandModels = { 'Motorola' : ['Moto X', 'Moto 2gen', 'Moto 3gen'],
							'Sony'	: ['Xperia']
							}

		product.models = brandModels[this.brand];

		product.showModels = true;
	}
}]);