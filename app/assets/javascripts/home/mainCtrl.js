angular.module('sourceOfTruth')
	.controller('MainCtrl', [
		'$scope',
    	'statements',
		function ($scope, statements){
  		
      		$scope.statements = statements.allStatements;

		}
	]);