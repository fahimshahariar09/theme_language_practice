import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_language/controller/ui_controller/profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          Switch(
              value: profileController.isLightTheme.value,
              onChanged: (value) {
                profileController.changeThemeFun();
              })
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text("profile"),
            ElevatedButton(
              onPressed: () {},
              child: Text("profile Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
