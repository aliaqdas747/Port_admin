import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ProjectScreen extends StatefulWidget {

  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

TextEditingController TitleController = TextEditingController();
TextEditingController Discrp_Controller = TextEditingController();


class _ProjectScreenState extends State<ProjectScreen> {
  void SaveProject(){

    String Title = TitleController.text.trim();
    String discreption = Discrp_Controller.text.trim();


    Map<String ,dynamic> ProjectMap ={
      "Title:" : Title,
      "Discription":discreption

    };

    if(TitleController!= ""&& Discrp_Controller!= "" ){
       _showNotification();
      FirebaseFirestore.instance.collection("Projects").doc(Title).set(ProjectMap);
      TitleController.clear();
      Discrp_Controller.clear();


    }else{
      _errorNotification();
    }

  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              const CircleAvatar(
                 radius: 50,
               ),
             TextField(
style: TextStyle(color: Colors.amber),
               controller:TitleController ,
                 decoration: InputDecoration(

                   label: Text("Title:",style: TextStyle(color: Colors.amber),),

                 ),
               ),
           TextField(
             style: TextStyle(color: Colors.amber),
             controller: Discrp_Controller,
                 decoration: InputDecoration(
                   label: Text("Discription",style: TextStyle(color: Colors.amber),),

                 ),
               ),
               InkWell(
                   onTap: (){
                     SaveProject();
                   },
                   child: Container(
                     child: Center(
                       child: Text("Save Project"),
                     ),
                     height: 50,width: double.infinity,color: Colors.amber,))

             ],
            ),
          ),
        ),
      )
    );
  }
}
void _showNotification() {
  Get.snackbar(
    'Notification',
    'Your message has been successfully sent to developer',
    backgroundColor: Colors.white,
    snackPosition: SnackPosition.TOP,
    duration:const Duration(seconds: 3),
  );
}
void _errorNotification(){
  Get.snackbar(
    'Notification',
    'Oops! It looks like you missed a spot. Please fill in all fields',
    backgroundColor: Colors.white,
    snackPosition: SnackPosition.TOP,
    duration:const Duration(seconds: 3),
  );
}

