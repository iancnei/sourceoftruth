angular.module('sourceOfTruth', ['ui.router', 'templates'])
.config([
    '$stateProvider',
    '$urlRouterProvider',
    '$locationProvider',
    function ($stateProvider, $urlRouterProvider, $locationProvider)
    {
      
      $stateProvider
        .state('home',
        {
          url: '/home',
          templateUrl: 'home/_home.html',
          controller: 'MainCtrl'
        })
        .state('statements',
        {
          url: '/statements/{id}',
          templateUrl: 'statements/_statements.html',
          controller: 'StatementsCtrl'
        });

      $urlRouterProvider.otherwise('home');

      $locationProvider.html5Mode(true);
    }]);