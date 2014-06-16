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

		$scope.userValido = function(){

			console.log('userValido')	
			console.log('Usuario => ' + $scope.username)
			console.log('Contraseña => ' + $scope.password)
			console.log('Recordar => ' + $scope.remember)
			var params = $.param({user: $scope.username, pass: $scope.password});
			
      $http({
        url: './valid_login',
        method: "POST",
        data: params,
        headers: {'Content-Type': 'application/x-www-form-urlencoded'}
      }).success(function (data, status, headers, config) {
        console.log('data ' + data)
        console.log('data.correct ' + data.correct)

        if (data.correct == 1){
        	console.log('OK USUARIO')
       	}
       	else {
       		console.log('ERROR USUARIO')
       	};

        return true;
      }).error(function (data, status, headers, config) {
        return false;
      });

		};
	}]);

})();



