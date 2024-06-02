import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 200,width:double.infinity,color: Colors.grey.shade900,),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,width:double.infinity,color: Colors.grey.shade900,),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,width:double.infinity,color: Colors.grey.shade900,),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,width:double.infinity,color: Colors.grey.shade900,),
          ],
        ),
      )
    );
  }
}
