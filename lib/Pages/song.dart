import 'package:flutter/material.dart';

class PlaySongScreen extends StatefulWidget {
  final int itemIndex;

  const PlaySongScreen({Key? key, required this.itemIndex}) : super(key: key);

  @override
  _PlaySongScreenState createState() => _PlaySongScreenState();
}

class _PlaySongScreenState extends State<PlaySongScreen> {
  bool isPlaying = false;

  void togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Now Playing'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image.asset('assets/demo.jpg'),
          ), // Replace with your album art
          SizedBox(height: 40),
          Text(
            'Song Title ${widget.itemIndex}', // Replace with actual song title
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
              'Artist Name ${widget.itemIndex}'), // Replace with actual artist name
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous, size: 34), // Increase icon size
                onPressed: () {
                  // Handle skip previous
                },
              ),
              IconButton(
                icon: Icon(
                  isPlaying
                      ? Icons.pause_circle_filled
                      : Icons.play_circle_filled,
                  size: 34, // Increase icon size
                ),
                onPressed: togglePlayPause,
              ),
              IconButton(
                icon: Icon(Icons.skip_next, size: 34), // Increase icon size
                onPressed: () {
                  // Handle skip next
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Slider(
            value: 0.1, // Set the current playback position
            onChanged: (newValue) {
              // Handle slider change
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(Icons.repeat, size: 24),
                  onPressed: () {}), // Increase icon size
              IconButton(
                  icon: Icon(Icons.shuffle, size: 24),
                  onPressed: () {}), // Increase icon size
              IconButton(
                  icon: Icon(Icons.queue_music, size: 24),
                  onPressed: () {}), // Increase icon size
            ],
          ),
        ],
      ),
    );
  }
}
