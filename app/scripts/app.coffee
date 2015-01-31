'use strict'

###*
 # @ngdoc overview
 # @name kaleidoApp
 # @description
 # # kaleidoApp
 #
 # Main module of the application.
###
angular
  .module('kaleidoApp', [
    'ngAnimate',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

