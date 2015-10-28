angular.module('sourceOfTruth')
	.factory('statementsFactory', ['$http', function ($http){
	  
		var o = {};
		o.statement = [];
		o.allStatements = [];

		o.query = function()
		{
			return $http.get('/statements.json').success(function(data){
				angular.copy(data, o.allStatements);
			});
		}
		
		o.get = function(id)
		{
			return $http.get('/statements/' + id + '.json').success(function(data){
			     angular.copy(data, o.statement);
			});
		}

		return o;

		// return $resource('/statements/:id');

	}]);