/**
 * Created by zipon on 2017/3/8.
 */
var app = angular.module("myapp",[]);

app.controller('login', function($scope,$http){

    $scope.formData={};
    $scope.buttonAbled=false;
    $scope.message = null;
    //提交表单
    $scope.processForm = function() {
        console.log($scope.formData);
        $http({
            method  : 'POST',
            url     : '/login',
            data    : $.param($scope.formData),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }  // set the headers so angular passing info as form data (not request payload)
        })
            .success(function(data) {
                    console.log(data);

                    console.log($scope.formData);
                    $scope.message = data.message;
                    console.log($scope.message);
                //如果登陆成功就跳转到首页
                if(data.code=="0"){
                    window.location="../../../index.jsp";
                }
                }
            );
    };
})

//根据登陆者查询任务
app.controller('hostsctrl',function ($scope,$http) {
    $scope.hosts= null;
    $scope.columnsToString={
        "id":"ID",
        "hostName":"环境名称",
        "hostIp":"环境地址",
        "hostPort":"端口",
        "description":"备注",
        "createTime":"创建时间",
        "updateTime":"更新时间"
    };
    $scope.columns = null;
    $http({
        method  : 'GET',
        url     : '/hosts',
        data    : '',  // pass in data as strings
        //headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    })
        .success(function(data){
            $scope.columns = data.columns;
            $scope.hosts = data.details;
        });

    //新增主机配置
    $scope.addHostInfo = null;


    $scope.addHostFunc = function () {
        console.log($scope.addHostInfo);
        //没有绑定这些数据，得人工置为null
         //$scope.addHostInfo.id=parseInt($scope.addHostInfo.id);
        // $scope.addHostInfo.createTime=null;
        // $scope.addHostInfo.updateTime=null;
        $http({
                    method  : 'POST',
                    url     : '/addhost',
                    data    : $scope.addHostInfo,  // pass in data as strings
                    headers : { 'Content-Type': 'application/json;charset=utf-8' }
                 }).success(function (data) {
                if(data.code==1){
                    //如果成功，重新加载hosts信息
                    $http({
                        method  : 'GET',
                        url     : '/hosts',
                        data    : '',  // pass in data as strings
                        //headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
                    })
                        .success(function(data){
                            $scope.columns = data.columns;
                            $scope.hosts = data.details;
                        })

                }else{
                    alert(data.message);
                }
        })

    }
    // $scope.taskDetail = "1234";
    // $scope.editTask=function($event){
    //     $scope.taskDetail = JSON.parse($event.target.getAttribute("value"));
    //     //debug
    //     console.log($scope.taskDetail.bonus);
    //     //$("#editTaskModal").html(taskDetail);
    //
    // };
    // $scope.updateTask=function () {
    //     $scope.taskDetail.taskId=parseInt($scope.taskDetail.taskId);
    //     $scope.taskDetail.codingPrice=parseInt($scope.taskDetail.codingPrice);
    //     $scope.taskDetail.dataEntryPrice=parseInt($scope.taskDetail.dataEntryPrice);
    //     $scope.taskDetail.dataCheckPrice=parseInt($scope.taskDetail.dataCheckPrice);
    //     $scope.taskDetail.epiDataPrice=parseInt($scope.taskDetail.epiDataPrice);
    //     $scope.taskDetail.outputPrice=parseInt($scope.taskDetail.outputPrice);
    //     $scope.taskDetail.bvcPrice=parseInt($scope.taskDetail.bvcPrice);
    //     $scope.taskDetail.price=parseInt($scope.taskDetail.price);
    //     $scope.taskDetail.bonus=parseInt($scope.taskDetail.bonus);
    //     $http({
    //         method  : 'POST',
    //         url     : '/task/updatetask',
    //         data    : $scope.taskDetail,  // pass in data as strings
    //         headers : { 'Content-Type': 'application/json;charset=utf-8' }
    //     })
    //         .success(function(data){
    //             console.log(data.message);
    //             if(data.message=="success") {
    //                 $http({
    //                     method: 'POST',
    //                     url: '/task/selectbyleader',
    //                     data: '',  // pass in data as strings
    //                     headers: {'Content-Type': 'application/x-www-form-urlencoded'}
    //                 })
    //                     .success(function (data) {
    //                         $scope.columns = data.columns;
    //                         $scope.tasks = data.details;
    //                     });
    //             }
    //         });
    //
    //
    // }
    //
    // $scope.insertTask=function () {
    //     $scope.taskDetail.taskId=parseInt($scope.taskDetail.taskId);
    //     $scope.taskDetail.codingPrice=parseInt($scope.taskDetail.codingPrice);
    //     $scope.taskDetail.dataEntryPrice=parseInt($scope.taskDetail.dataEntryPrice);
    //     $scope.taskDetail.dataCheckPrice=parseInt($scope.taskDetail.dataCheckPrice);
    //     $scope.taskDetail.epiDataPrice=parseInt($scope.taskDetail.epiDataPrice);
    //     $scope.taskDetail.outputPrice=parseInt($scope.taskDetail.outputPrice);
    //     $scope.taskDetail.bvcPrice=parseInt($scope.taskDetail.bvcPrice);
    //     $scope.taskDetail.price=parseInt($scope.taskDetail.price);
    //     $scope.taskDetail.bonus=parseInt($scope.taskDetail.bonus);
    //     $http({
    //         method  : 'POST',
    //         url     : '/task/inserttask',
    //         data    : $scope.taskDetail,  // pass in data as strings
    //         headers : { 'Content-Type': 'application/json;charset=utf-8' }
    //     })
    //         .success(function(data){
    //             console.log(data.message);
    //             if(data.message=="success") {
    //                 $http({
    //                     method: 'POST',
    //                     url: '/task/selectbyleader',
    //                     data: '',  // pass in data as strings
    //                     headers: {'Content-Type': 'application/x-www-form-urlencoded'}
    //                 })
    //                     .success(function (data) {
    //                         $scope.columns = data.columns;
    //                         $scope.tasks = data.details;
    //                     });
    //             }
    //         });
    // }

})