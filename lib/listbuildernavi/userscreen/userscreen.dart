import 'package:flutter/material.dart';
import 'package:module6/listbuildernavi/userdetailsscreen/userdetailsscreen.dart';

import '../savescreen/nav1.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key,required this.users});
 final List<User>users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
        return ListTile(
          title: Text(users[index].name),
          subtitle: Text(users[index].occupation),
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> UserDetailsScreen(user: users[index])));
          },
        );
      }),
    );
  }
}
