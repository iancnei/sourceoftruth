angular.module('sourceOfTruth')
	.controller('StatementsCtrl', [
		'$scope',
		'$stateParams',
		'statementsFactory',
		'$location',
		function ($scope, $stateParams, statementsFactory, $location)
		{
			$scope.statement = statementsFactory.get($stateParams.id);
			// $scope.statement = statementsFactory.get({id: $stateParams.id}, function (data)
			// {
			// 	console.log(data);
			// });

			$scope.searchStatement = {};

			$scope.LinkToStatement = function()
			{
				$location.path('/statements/' + $scope.searchStatement.name);
			}
		}
	]);