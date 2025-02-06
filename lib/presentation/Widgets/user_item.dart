import 'package:flutter/material.dart';

import '../../data/models/users.dart';
class UserItem extends StatelessWidget {
final User user;
  const UserItem({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return  Container(width: double.infinity,
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(4),
    decoration: BoxDecoration(color: Colors.grey,
      borderRadius: BorderRadius.circular(8),

    ),
    child: GridTile(child: Container(color: Colors.yellow,child: Text(user.Fname)),),);
  }
}











