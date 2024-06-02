import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String item;

  GridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image, size: 50, color: Colors.blue),
              SizedBox(height: 10),
              Text(
                item,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}