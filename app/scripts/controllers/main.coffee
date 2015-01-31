'use strict'

###*
 # @ngdoc function
 # @name kaleidoApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the kaleidoApp
###
angular.module('kaleidoApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
