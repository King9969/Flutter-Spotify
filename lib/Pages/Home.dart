import 'package:flutter/material.dart';
import 'package:spotify/Pages/song.dart'; // Import your song page
import 'Components/item.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 60, left: 10, right: 10, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.notifications),
                      SizedBox(width: 20),
                      Icon(Icons.history),
                      SizedBox(width: 20),
                      Icon(Icons.settings),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
              child: Column(
                children: [
                  buildRowWithItems(),
                  SizedBox(height: 10), // Adjust spacing between rows
                  buildRowWithItems(),
                  SizedBox(height: 10), // Adjust spacing between rows
                  buildRowWithItems(),
                ],
              ),
            ),
            _buildSection("Recently Played"),
            SizedBox(height: 20),
            _buildRecentlyPlayedList(context),
            _buildSection("Made For You"),
            SizedBox(height: 20),
            _buildRecentlyPlayedList(context),
            _buildSection("Best of Artists"),
            SizedBox(height: 20),
            _buildRecentlyPlayedList(context),
            _buildSection("Your Top Mixes"),
            SizedBox(height: 20),
            _buildRecentlyPlayedList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildRecentlyPlayedList(BuildContext context) {
    return SizedBox(
      height: 200, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Replace with the actual number of items
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the PlaySongScreen for the selected item
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaySongScreen(itemIndex: index),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150, // Adjust the width as needed
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5), // Add border radius
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/demo.jpg', // Replace 'assets/demo.jpg' with the actual path to your image asset
                        fit: BoxFit
                            .fill, // Make the image cover the full container
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0), // Adjust the value as needed
                  child: Text(
                    'Artist Name', // Customize with actual artist name
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
