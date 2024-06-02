// main.dart
import 'package:admin/Screens/Project_managment.dart';
import 'package:admin/Screens/msg_managment.dart';
import 'package:admin/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
   );
   
 QuerySnapshot snapshot=await  FirebaseFirestore.instance.collection("Messages").get();
   print(snapshot.docs.toString());
   
   
  runApp(MyApp());
  

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      color: Colors.grey.shade900,
      title: 'Admin Penal',
      theme: ThemeData(

        primarySwatch: Colors.amber,
        primaryColor: Colors.amber
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(

          backgroundColor: Colors.grey.shade900,
          title: Text('Admin Penal',style: TextStyle(color: Colors.deepPurple),),
          bottom: TabBar(

            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Projects'),
              Tab(icon: Icon(Icons.business), text: 'Messages'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProjectScreen(),
            MsgsScreen(),
          ],
        ),
      ),
    );
  }
}
