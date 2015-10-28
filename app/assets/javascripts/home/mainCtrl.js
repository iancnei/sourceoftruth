angular.module('sourceOfTruth')
	.controller('MainCtrl', [
		'$scope',
		'statementsFactory',
		'$http',
		function ($scope, statementsFactory, $http)
		{
			$scope.allStatements = statementsFactory.query();

			$scope.statement = {};

			$scope.LinkToStatement = function()
			{
				$http.get('/statements/' + $scope.statement.name).success(function(status){
					console.log(status)
				});
			}
		}
	]);