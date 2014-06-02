(function() {
  

	angular.module('GuiaV').controller('LaboratorioController', ['$scope', 'filterFilter', '$http', function($scope, $filterFilter, $http) {
	  $scope.laboratorios = [];
	  return $http.get('./laboratorios.json').success(function(data) {
	    return $scope.laboratorios = data;
	  });
	}]);

})();
