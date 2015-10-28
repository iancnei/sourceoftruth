angular.module('sourceOfTruth')
	.controller('MainCtrl', [
		'$scope',
		'statementsFactory',
		'$http',
		'$location',
		function ($scope, statementsFactory, $http, $location)
		{
			$scope.allStatements = statementsFactory.query();

			$scope.searchStatement = {};

			$scope.LinkToStatement = function()
			{
				$location.path('/statements/' + $scope.searchStatement.name.toLowerCase());
			}
		}
	]);