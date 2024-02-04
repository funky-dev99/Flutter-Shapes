import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Space Invader Shape'),
        ),
        body: Center(
          child: SpaceInvaderWidget(),
        ),
      ),
    );
  }
}

class SpaceInvaderWidget extends StatelessWidget {
  final double blockSize = 5.0; // Modify the size here as needed

  @override
  Widget build(BuildContext context) {
    return Container(
      width: blockSize,
      height: blockSize,
      decoration: BoxDecoration(
        color: Colors.black, // Set the background color
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: blockSize,
            color: Colors.black,
          ),
          BoxShadow(
            offset: Offset(0, blockSize),
            blurRadius: blockSize,
            color: Colors.black,
          ),
          BoxShadow(
            offset: Offset(-2.5 * blockSize, 1.5 * blockSize),
            blurRadius: 0.5 * blockSize,
            color: Colors.black,
          ),
          BoxShadow(
            offset: Offset(2.5 * blockSize, 1.5 * blockSize),
            blurRadius: 0.5 * blockSize,
            color: Colors.black,
          ),
          // Add more box shadows as needed based on your CSS code
        ],
      ),
    );
  }
}
