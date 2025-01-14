import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MsgsScreen extends StatelessWidget {
  const MsgsScreen({super.key});

  // Function to delete a document by ID
  void deleteProject(String docId) {
    FirebaseFirestore.instance.collection("Messages").doc(docId).delete().then((_) {
      print("Document successfully deleted!");
    }).catchError((error) {
      print("Error removing document: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("Messages").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasData && snapshot.data != null) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> userMsg = snapshot.data!.docs[index].data() as Map<String, dynamic>;
                        String docId = snapshot.data!.docs[index].id; // Get the document ID

                        return  Container(

                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name:     ${userMsg["Name"]}",style: TextStyle(fontWeight: FontWeight.w600), ),
                                Text("Email:     ${userMsg['Email']}" ,style: TextStyle(fontWeight: FontWeight.w600), ),
                                Text("Subject:     ${userMsg["Subject"]}",style: TextStyle(fontWeight: FontWeight.w600), ),
                                Text("Message:     ${userMsg["Messages"]}",style: TextStyle(fontWeight: FontWeight.w600), ),
                              ],
                            ),
                          ),

                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text("No Data"),
                    );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
///   Text(userMsg["Name"], ),
//                                     Text(userMsg['Email'], ),
//                                     Text(userMsg["Subject"],  ),
//                                     Text(userMsg["Messages"], ),