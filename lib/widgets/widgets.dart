import 'package:flutter/material.dart';

Widget MentorCard(String name, String designation, String url, String exp, String fee, Color color){

  return Card(
    elevation: 10,
    color: color,
    shadowColor:Colors.black,
    child: SizedBox(
      height: 150,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 8.0),
        child: Row(
          children: [
            SizedBox(
              height: 200,
              width: 100,
              child: Image(image: AssetImage(url), fit: BoxFit.fill,),
            ),
            const SizedBox(width: 20,),
            SizedBox(
              height: 200,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3,),
                  Text(
                    designation,
                    style: const TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 3,),
                  Text(
                    exp,
                    style: const TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 3,),
                  Text(
                    fee,
                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );

}