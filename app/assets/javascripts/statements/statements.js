angular.module('sourceOfTruth')
	.factory('statements', [function(){
	  
		var o = {
		allStatements: [
			{name: 'if', text: "if(a > b)\n{\n  //do something\n}", id: 0},
			{name: 'for', text: "for(var i; i < limit; i++)\n{\n  //do something\n}", id: 1},
			{name: 'while', text: "while(a > b)\n{\n  //do something\n}", id: 2},
  		]
		};
		return o;

	}]);