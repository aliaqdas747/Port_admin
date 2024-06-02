import 'package:flutter/material.dart';

class MsgsScreen extends StatelessWidget {
  const MsgsScreen({super.key});

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
