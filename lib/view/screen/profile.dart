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
        title: Text("profile"),
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
            DropdownButton(
              hint: Text(
                  'Please choose a location'), // Not necessary for Option 1
              value: "${profileController.selectedLanguage.value}",
              onChanged: (newValue) {
                profileController.selectedLanguage.value = newValue!;
                profileController.changeLanguageFun();
              },
              items: profileController.languageList.map((location) {
                return DropdownMenuItem(
                  child: new Text(location),
                  value: location,
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
