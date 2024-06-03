import 'package:flutter/material.dart';
import 'package:working_with_dummy/data/mentordataclass.dart';
import 'package:working_with_dummy/widgets/widgets.dart';

class MentorProfileScreen extends StatelessWidget {

  final Mentor mentorProfile;

  const MentorProfileScreen(
    this.mentorProfile, {super.key}
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentor Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child:  MentorCard(
                    mentorProfile.name,
                    mentorProfile.designation,
                    mentorProfile.url,
                    mentorProfile.exp,
                    mentorProfile.fee,
                    Colors.blueGrey
                  )
            ),
            Card(
              elevation: 10,
              color: Colors.blueAccent[200],
              shadowColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    mentorProfile.details['about']
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8,
              shadowColor: Colors.black,
              color: Colors.deepPurpleAccent[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Rating Overview',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${mentorProfile.details['rating']}/",
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                          "5",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        ),
    );
  }
  
}