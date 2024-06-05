import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:working_with_dummy/screen/image_picker.dart';
import 'package:working_with_dummy/viewmodel/mentors_screen_viewmodel.dart';
import 'package:working_with_dummy/screen/mentor_list_screen.dart';

void main() {
  Get.put(MentorViewmodel());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignupPage(),
      // SignupPage(),
      // const MentorListView(),
      debugShowCheckedModeBanner: false,
    );
  }
}


