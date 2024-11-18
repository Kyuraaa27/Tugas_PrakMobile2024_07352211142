import 'package:flutter/material.dart';

Widget SectionHeader(String sectionName) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        color: const Color.fromARGB(255, 39, 169, 19),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          sectionName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          // Add your navigation or action here
        },
        child: Text(
          'View All',
          style: TextStyle(
            color: const Color.fromARGB(255, 5, 164, 5),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
