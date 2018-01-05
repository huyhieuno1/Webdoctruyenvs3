'use strict';
angular.module('myApp').controller('HeaderController', ['$scope', 'HeaderService', function($scope, HeaderService) {
	fetchMenu();
	$scope.listTL = [];
	/*Lấy list thể loại*/
	function fetchMenu(){
		HeaderService.fetchListTL(function(response){
			$scope.listTL = response;
			console.log(response);
		});
	}
	/*Lấy list truyện theo thể loại*/
	function fetchListTR_TLS(id){
		HeaderService.fetchListTR_TL(id,function(response){
    		$scope.listTR= response;
    		console.log(response);
    	}, function(error){
    		console.log('Error!');
    	});
	}
	 $scope.listTRbyid = function(id){
		 fetchListTR_TLS(id);
	 }
	 
   
}]);

angular.module('myApp').controller('IndexController', ['$scope', 'IndexService', function($scope, IndexService) {
	fetchListTRS();
	$scope.listTR = [];
	/*Lấy list truyện*/
	function fetchListTRS(){
		IndexService.fetchListTR(function(response){
			$scope.listTR = response;
		});
		
	}
}]);

