angular.module('sourceOfTruth')
	.controller('StatementsCtrl', [
		'$scope',
		'$stateParams',
		'statements',
		function ($scope, $stateParams, statements)
		{
			$scope.statement = statements.allStatements[$stateParams.id];
		}
	]);