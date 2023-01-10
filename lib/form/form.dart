import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_class/main/mainScreen.dart';
import 'package:my_class/routes.dart';

import '../services/auth.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  
  

  final Major_list = ["Informatique app","Mecatronique","Telecom emb","Electronique indus"];
  final Class_level_list = ["Premiere année","Deuxième année","Troisième année"];
  final Group_list = ["Premier groupe","Deuxième groupe","Troisième groupe"];
  String? selected_major ="Informatique app";
  String? selected_level ="Premiere année";
  String? selected_group ="Premier groupe";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Personel Informations")),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const FlutterLogo(
              size: 100,
            ),
            SizedBox(height: 20.0,),
            Text('First Name:'),
            SizedBox(height: 10.0,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            Text('Last Name:'),
            SizedBox(height: 10.0,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0,),
            Text('Major :'),
            DropdownButton
            ( value: selected_major,
              items: Major_list.map((e) => DropdownMenuItem(child: Text(e), value: e,)).toList(),
             onChanged: (value){
                setState(() {
                  this.selected_major =value;
                });
             },
             ),
             SizedBox(height: 20.0,),
            Text('Level :'),
            DropdownButton
            ( value: selected_level,
              items: Class_level_list.map((e) => DropdownMenuItem(child: Text(e), value: e,)).toList(),
             onChanged: (value){
              setState(() {
                this.selected_level =value;
              });
             },),
             SizedBox(height: 20.0,),
            Text('Group :'),
            DropdownButton
            ( value: selected_group,
              
              items: Group_list.map((e) => DropdownMenuItem(child: Text(e), value: e,)).toList(),
             onChanged: (value){
              setState(() {
                this.selected_group = value;
              });
             },),
             SizedBox(height: 40.0,),
             ElevatedButton.icon(onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
              );
              } ,
             icon:Icon(FontAwesomeIcons.floppyDisk,
             color: Colors.white,
             size: 20,) ,
             label: Text('Save'),
             ),
             SizedBox(height: 20.0,),
                ElevatedButton.icon(onPressed: () async {
            await AuthService().signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
          } ,
             icon:Icon(FontAwesomeIcons.rightFromBracket,
             color: Colors.white,
             size: 20,) ,
             label: Text('Signout'),
             style: TextButton.styleFrom(
              backgroundColor: Colors.black
             ),
             ),
          


             
          ],
        ),
      ),
    );
  }
}