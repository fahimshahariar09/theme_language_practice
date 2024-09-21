import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_language/view/screen/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home screen".tr),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const Profile());
              },
              child: Text("profile Screen".tr),
            ),
          ],
        ),
      ),
    );
  }
}
