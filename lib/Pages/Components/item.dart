import 'package:flutter/material.dart';

Widget buildRowWithItems() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildItem(
        'Song Name 1',
        Image.asset(
          'assets/demo.jpg', // Replace with the actual path to your image asset
          fit: BoxFit.fill,
        ),
        Colors.blue,
      ),
      _buildItem(
          'Song Name 2',
          Image.asset(
            'assets/demo2.jpg', // Replace with the actual path to your image asset
            fit: BoxFit.fill,
          ),
          Colors.blue),
    ],
  );
}

Widget _buildItem(String songName, dynamic imageOrIcon, Color color) {
  return Container(
    width: 180,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.grey[900],
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: color,
              child: imageOrIcon is Image
                  ? imageOrIcon
                  : Icon(imageOrIcon, color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              songName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
