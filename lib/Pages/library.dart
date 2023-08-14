import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.only(top: 60, left: 10, right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Library',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Implement your onPressed logic here
                },
              ),
            ],
          ),
          SizedBox(height: 30), // Add spacing between title and song row
          _buildSongRow('Song 1', Icons.music_note),
          _buildSongRow('Song 1', Icons.music_note),
          _buildSongRow('Song 2', Icons.music_note),
          _buildSongRow('Song 3', Icons.music_note),
          _buildSongRow('Song 1', Icons.music_note),
          _buildSongRow('Song 2', Icons.music_note),
          _buildSongRow('Song 3', Icons.music_note),
          _buildSongRow('Song 1', Icons.music_note),
          _buildSongRow('Song 2', Icons.music_note),
          _buildSongRow('Song 3', Icons.music_note),
          _buildSongRow('Song 2', Icons.music_note),
          _buildSongRow('Song 3', Icons.music_note),
          // Add more song rows as needed
        ],
      ),
    ));
  }

  Widget _buildSongRow(String songName, IconData iconData) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey, // Placeholder color
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 36,
            ),
          ),
          SizedBox(width: 20),
          Text(
            songName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
