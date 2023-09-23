import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../savescreen/nav1.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key,required this.user});
 final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('${user.name} is a big name'),

        ],
      ),
    );
  }
}
