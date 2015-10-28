angular.module('sourceOfTruth')
	.factory('statementsFactory', ['$http', function ($http){
	  
		var o = {};
		
		o.specificStatement = function(id)
		{
			return $http.get('/statements/' + id + '.json').success(function(data){
			     angular.copy(data, o.statement);
			     console.log(data);
			     return o.statement;
			});
		}

		return o;

	}]);