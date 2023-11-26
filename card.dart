import 'package:flutter/material.dart';

class BanixCard extends StatelessWidget {
  final String name;
  const BanixCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    int letterCount = name.replaceAll(" ", "").length;

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.account_circle,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                '$letterCount Letters',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}