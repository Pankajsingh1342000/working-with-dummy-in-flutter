import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:working_with_dummy/screen/mentor_profile_screen.dart';
import 'package:working_with_dummy/viewmodel/mentors_screen_viewmodel.dart';
import 'package:working_with_dummy/widgets/widgets.dart';

class MentorListView extends StatelessWidget {
  const MentorListView({super.key});
  @override
  Widget build(BuildContext context) {

    final MentorViewmodel mentorData = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Mentors"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: mentorData.filterMentors,
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),

          Expanded(
            child: Obx(
              (){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: mentorData.filteredMentor.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: MentorCard(
                        mentorData.filteredMentor[index].name,
                        mentorData.filteredMentor[index].designation,
                        mentorData.filteredMentor[index].url,
                        mentorData.filteredMentor[index].exp,
                        mentorData.filteredMentor[index].fee,
                        Colors.greenAccent[100]!
                      ),
                        onTap: () {
                          Get.to(()=>MentorProfileScreen(mentorData.filteredMentor[index]));
                        },
                      );
                    },
                  ),
                );
              }
            )
          )
        ],
      )
    );
  }
}