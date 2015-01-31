'use strict'

###*
 # @ngdoc function
 # @name kaleidoApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the kaleidoApp
###
angular.module('kaleidoApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
