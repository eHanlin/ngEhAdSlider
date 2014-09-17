
app = angular.module 'eHanlin', []

app.directive 'ngEhAdSlider', [ '$timeout', ( $timeout )->

  scope:
    data:"=?"
    time:"=?"
    photoPath:"@"
    target:"@"

  template:"""
    <a href="{{ad.url}}" ng-repeat="ad in data" ng-show="index == $index" target="{{target}}">
      <img ng-src="{{photoPath}}{{ad.photo}}" alt="" width="100%">
    </a>
  """

  link:( scope, element, attrs, ctrl )->

    angular.extend scope,
      index:0
      loop:->
        len = scope.data.length
        if scope.index < len - 1 then scope.index++ else scope.index = 0
        $timeout ->
          scope.loop()
        , scope.time

    scope.$watch 'ready', ->
      if !scope.time then scope.time = 5000
      if !scope.data then scope.data = []
      scope.loop()

]

