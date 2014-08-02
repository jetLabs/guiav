(function() {

	var app = angular.module('guiaV', []);
	
	app.controller('LaboratorioController', function($scope, $http) {
	  $scope.laboratorios = [];
	  return $http.get('./laboratorios.json').success(function(data) {
	    return $scope.laboratorios = data;
	  });
	});

	app.controller('LogInController', ['$scope','$http', function($scope,$http){
		// Variables que se llenan desde la vista
		$scope.username = '';
		$scope.password = '';
		$scope.remember = '';
		$scope.valido = false;
		$scope.invalido = false;

		$scope.userValido = function(){

		var params = $.param({username: $scope.username, pass: $scope.password});
			
	      $http({
	        url: './login',
	        method: "POST",
	        data: params,
	        headers: {'Content-Type': 'application/x-www-form-urlencoded'}
	      }).success(function (data, status, headers, config) {
	        console.log('data ' + data)
	        window.location = "/";
	        return true;
	      }).error(function (data, status, headers, config) {
	        return false;
	      });

		};
	}]);

	app.controller('SearchBoxController', ['$scope', '$window', function($scope, $window){
		// Variables que se llenan desde la vista
		$scope.search = '';

		$scope.searchMedicament = function(){
			
	       $window.location.href = '/search';

		};
	}]);

})();



