(function() {
	var app = angular.module('guiaV', []);
	app.controller('LaboratorioController', function($scope, $http) {
	  $scope.laboratorios = [];
	  return $http.get('./laboratorios.json').success(function(data) {
	    return $scope.laboratorios = data;
	  });
	});
})();

