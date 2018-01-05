'use strict';
angular.module('myApp').factory('HeaderService', ['$http', function($http){
	var URL = '/WebDocTruyen/header/';
	var factory = {};
	/*Lấy list  thể loại*/
	factory.fetchListTL = (callbackData,error) => { 
		$http.get(URL)
		.then(function(response){
				if(response.data == '204'){
					console.log('fetch data error!')
				}
				else{
					callbackData(response.data);
				}
			}).catch(function(error){console.log('fetch data error!')});
	}
	/*Lấy list truyện theo thể loại*/
    factory.fetchListTR_TL = (id,callbackData,errorData) => {
    	$http.get(URL+id)
    	.then(function(response){
    		callbackData(response.data);
    	}, function(error){
    		errorData(error.statusText);
    	});
    }
	
	return factory;
}]);

angular.module('myApp').factory('IndexService', ['$http', function($http){
	var URL = '/WebDocTruyen/listTr/';
	var factory = {};
	/*Lấy list truyện */
	factory.fetchListTR = (callbackData,error) => { 
		$http.get(URL)
		.then(function(response){
				if(response.data == '204'){
					console.log('fetch data error!')
				}
				else{
					callbackData(response.data);
				}
			}).catch(function(error){console.log('fetch data error!')});
	}
	return factory;
}]);

