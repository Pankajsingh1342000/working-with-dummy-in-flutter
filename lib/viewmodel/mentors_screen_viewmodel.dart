import 'package:get/get.dart';
import 'package:working_with_dummy/data/mentordataclass.dart';
import 'package:working_with_dummy/data/mentorsdata.dart';

class MentorViewmodel extends GetxController {

  final List<Mentor> mentorList = mentorlist;

  var filteredMentor = <Mentor>[].obs;

  @override
  void onInit() {
    super.onInit();
    filteredMentor.value = mentorList;
  }

  void filterMentors(String query) {
    if(query.isEmpty){
      filteredMentor.value = mentorList;
    }
    else{
      filteredMentor.value = mentorList.where((mentor){
        return 
        mentor.name.toLowerCase().contains(query.toLowerCase())||
        mentor.designation.toLowerCase().contains(query.toLowerCase())||
        mentor.exp.toLowerCase().contains(query.toLowerCase())||
        mentor.fee.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
  }

}
