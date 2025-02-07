
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key, required this.name, required this.role,required this.imagePath});
  final String name;
  final String role;
  final  imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
           
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  role,
                  style: TextStyle(fontSize: 14, color: Color(0xff22C7B8)),
                ),
              ],
            ),
          ],
        ),
        Image.asset('assets/images/gg.png')
      ],
    );
  }
}
