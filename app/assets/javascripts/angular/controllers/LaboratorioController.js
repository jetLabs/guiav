(function() {
  var app = angular.module('GuiaV', []);

	app.controller('LaboratorioController', ['$scope', 'filterFilter', '$http', function($scope, $filterFilter, $http) {
	  $scope.laboratorios = [];
	  return $http.get('./laboratorios.json').success(function(data) {
	    return $scope.laboratorios = data;
	  });
	}]);

})();
