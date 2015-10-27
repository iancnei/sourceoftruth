angular.module('sourceOfTruth', ['ngResource'])
.controller('StatementsCtrl', [
		'$scope',
		'$stateParams',
		'$resource',
		'StatementsFactory',
		function ($scope, $stateParams, $resource, StatementsFactory)
		{
			// $scope.statement = Statements.get({id: $routeParams.id}, function (data)
			// {
			// 	console.log(data);
			// });

			// $scope.statement = StatementsFactory.specificStatement($routeParams.id);

		}
	]);