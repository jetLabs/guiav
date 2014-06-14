(function() {
	var app = angular.module('guiaV', []);
	app.controller('LaboratorioController', function($scope, $http) {
	  $scope.laboratorios = [];
	  return $http.get('./laboratorios.json').success(function(data) {
	    return $scope.laboratorios = data;
	  });
	});

	app.controller('LogInController', function($scope){
		$scope.userValido = function(username, password){
	      $http({
            url: 'http://localhost:3000.com/valid_login',
            method: "POST",
            data: { user: username , pass: password},
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        }).success(function (data, status, headers, config) {
                return true;
            }).error(function (data, status, headers, config) {
                return false;
            });

		};
	});
})();



