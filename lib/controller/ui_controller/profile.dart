

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{

  RxBool isLightTheme =true.obs;

  changeThemeFun()async{
    isLightTheme.value = !isLightTheme.value;

    Get.changeTheme(!isLightTheme.value ? ThemeData.dark() :ThemeData.light());
  }


}