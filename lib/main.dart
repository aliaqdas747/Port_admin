import 'package:admin/Screens/Project_managment.dart';
import 'package:admin/Screens/msg_managment.dart';
import 'package:admin/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.grey.shade900,
      title: 'Admin Panel',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.amber, // AppBar icon color
          ),
          backgroundColor: Colors.grey, // AppBar background color
        ),
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,
        tabBarTheme: TabBarTheme(
          labelColor: Colors.amber, // Tab label color
          unselectedLabelColor: Colors.white, // Unselected tab label color
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.amber, // Indicator color
                width: 2.0,
              ),
            ),
          ),
          labelPadding: const EdgeInsets.symmetric(vertical: 10.0), // Padding for tabs
        ),
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
          title: const Text(
            'Admin Panel',
            style: TextStyle(color: Colors.amber),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.amber, // Indicator color
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.amber), text: 'Projects'),
              Tab(icon: Icon(Icons.business, color: Colors.amber), text: 'Messages'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ProjectScreen(),
            MsgsScreen(),
          ],
        ),
      ),
    );
  }
}
