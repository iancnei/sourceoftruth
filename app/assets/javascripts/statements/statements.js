angular.module('sourceOfTruth', ['ui.router', 'templates', 'ngResource'])
.factory('StatementsFactory', ['$resource', '$http', function ($resource, $http)
	{
	  
		// var o = {
		// allStatements: [
		// 	{name: 'if', text: "if(a > b)\n{\n  //do something\n}", id: 0},
		// 	{name: 'for', text: "for(var i; i < limit; i++)\n{\n  //do something\n}", id: 1},
		// 	{name: 'while', text: "while(a > b)\n{\n  //do something\n}", id: 2},
  // 		]
		// };
		// return o;

		// return $resource('/statements.json');

		var o;
		o.specificStatement = function(id)
		{
			return $http.get('/statements/{id}.json').success(function(data){
			     angular.copy(data, o.statement);
			});
		}

	}]);