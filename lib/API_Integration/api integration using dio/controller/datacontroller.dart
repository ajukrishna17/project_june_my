import 'dart:html';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:project_june2/API_Integration/api%20integration%20using%20dio/service/dio%20service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/datamodel.dart';

class DataController extends GetxController{
  RxList<DataModel> datas= RxList();
  RxBool isLoading=true.obs;
  RxBool isListatDown=false.obs;
  RxBool isNetConnected=true.obs;

  var url='https://jsonplaceholder.typicode.com/posts';
  var itemController=ItemScrollController();
  isInternetConnected() async{
    isNetConnected.value=await InternetConnectionChecker().hasConnection;
  }

  fetchData() async{
    isInternetConnected();
    isLoading.value=true;
    var response = await DioService().getData(url);
    if(response.statuscode==200){
      response.data.forEach((element){
        datas.add(DataModel.fromJson(element));
      });
      isLoading.value=false;
    }
  }
  scrollToDown(){
    itemController.scrollTo(index: datas.length,
        duration: Duration(seconds:3),
      curve: Curves.easeInQuart
    );
    }
    scrollToUp(){
    itemController.scrollTo(index: 0,
        duration: Duration(seconds: 3),
      curve: Curves.bounceInOut
    );
    isListatDown.value=false;
    }
    @override
  void onInit(){
    fetchData();
    isInternetConnected();
    super.onInit();
    }
  }
