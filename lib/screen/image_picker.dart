import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:working_with_dummy/viewmodel/image_picker_viewmodel.dart';

class SignupPage extends StatelessWidget {
  final ImagePickerViewmodel signupController = Get.put(ImagePickerViewmodel());

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Obx(
        () {
          return Center(
            child: GestureDetector(
              onTap: (){
                signupController.getImage();
              },
              child: CircleAvatar(
                radius: 80,
                backgroundImage: signupController.imagePath.isNotEmpty 
                ? FileImage(File(signupController.imagePath.toString())) 
                : AssetImage("assets/mentor_images/profile1.jpg") as ImageProvider
              ),
            ),
          );
        }
      )
    );
  }
}