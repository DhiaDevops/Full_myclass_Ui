import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../shared/navbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(children: [
        SizedBox(height: 20.0,),
        Center(
          child: Text('Hello Again <User>',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            
          ),),
        ),
        SizedBox(height: 20.0,),
        Center(
          child: Text('Your scheduele for today :',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            
          ),),
        )
      ],),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}