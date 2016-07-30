var app = angular.module ('myModule', []);

app.controller ('myController', ['$scope', '$http',  function ( $scope, $http) {
  $scope.regions = ['Ballarat-Central-Suburb', 'Thornbury-Suburb', 'Wonthaggi-Catchment'];
  $scope.selectedRegionIndex = 0;
  $scope.regionInformation = {};

  $http.get(
    'data/' + $scope.regions[$scope.selectedRegionIndex] + '.json'
  ).then (function (data) {
    $scope.regionInformation = data;
  });
}]);
