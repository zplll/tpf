# tpf
testplatform测试平台



# 前端分页插件的使用：
## mePagination这个依赖一定要加
## my-pagination.js对原来的插件有做部分修改完善
1.
```javascript
    angular.module('app',['mePagination'])
	    .controller('myController',['$scope',function($scope){
		    $scope.myPage={
            		currentPage:1,//访问第几页数据，从1开始
            		totalItems:0,//数据库中总共有多少条数据
            		itemsPerPage: 30,//默认每页展示多少条数据，可更改
            		pagesLength: 15,
            		perPageOptions: [10, 20, 30, 40, 50,60]//可选择的每页展示多少条数据
        	  };

		//监测当页码。总数据，每页展示数据个数变化时，重新加载数据
         	$scope.$watch(function () 
             		return $scope.myPage.itemsPerPage+' '+$scope.myPage.currentPage+' '+				$scope.myPage.totalItems;
         	},getList);

		function getList(){
			//获取列表需要时，将页码重置为1
            		$scope.myPage.currentPage=myPage.pageNub;

		//传给服务器时，页码从0开始
            	$http.get(host_name+url,{params:{"page":$scope.myPage.currentPage-1,"limit":$scope.myPage.itemsPerPage,'}})
                  .success(function(d){
                  
                      $scope.list= d.data.result;
                   
                      $scope.myPage.totalItems=d.data.total;//当获取总数据后，修改默认值
                   

                })
        }

	}])
```
在页面中：
<div ng-if="myPage.totalItems" my-pagination pg="myPage"></div>

pg属性不能改，双向数据绑定的
