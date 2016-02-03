# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module('bags', ['ngResource'])

.factory('Bag', ($resource)-> 
  return $resource('/bags/:id.json', { id: '@_id' }, {
    check: {
      url: '/bags/check'
      method: 'POST',
      params: {}
    },
    retrieve: {
      url: '/bags/retrieve'
      method: "POST"
      params: {}
    }
  });
)

.controller 'bagCheckController', ['$scope', 'Bag', ($scope, Bag) ->
  $scope.master = {}
  $scope.bag = {}
  $scope.ticket = {}

  $scope.reset = ->
    $scope.bag = angular.copy($scope.master)
    return
    
  $scope.check = (size)->
    $scope.reset()
    $scope.bag.size = size
    $scope.bag = Bag.check($scope.bag)
    return 
    
  $scope.retrieve = (number)->
    $scope.ticket = {}
    $scope.ticket.number = number
    $scope.locker = Bag.retrieve($scope.ticket)
    return $scope.locker

  $scope.reset()
  return
]

  