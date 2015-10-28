angular.module('sourceOfTruth')
	.factory('statementsFactory', ['$http', function ($http){
	  
		var o = {};
		o.statement = [];
		
		o.specificStatement = function(id)
		{
			return $http.get('/statements/' + id + '.json').success(function(data){
			     angular.copy(data, o.statement);
			});
		}

		return o;

		// return $resource('/statements/:id');

	}]);