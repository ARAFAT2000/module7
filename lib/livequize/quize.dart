import 'package:flutter/material.dart';

class Quize6 extends StatelessWidget {
  const Quize6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Shopping List')),

        actions: [
          Icon(Icons.shopping_cart)
        ],
      ),
      body:  Column(
        children: [
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Call'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Alarm'),
          ),
        ],
      )

    );


  }
}

