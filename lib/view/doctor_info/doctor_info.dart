import 'package:flutter/material.dart';

class DoctorInfoPage extends StatefulWidget {
  const DoctorInfoPage({Key? key}) : super(key: key);

  @override
  _DoctorInfoPageState createState() => _DoctorInfoPageState();
}

class _DoctorInfoPageState extends State<DoctorInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Info",
          style: TextStyle(
            color: Color(0xFF2FC9FE),
            fontWeight: FontWeight.bold, // Set the fontWeight to bold
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Container(
            width: 329,
            height: 177,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20), // Adjust border radius as needed
            ), // Adjust left margin as needed
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  20), // Same border radius as the container
              child: Image.asset(
                'assets/main/topd.jpg', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Other widgets can go here
          SizedBox(height: 10), // Add some space between the two containers
          Container(
            width: 329,
            height: 88,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200], // Add border for visualization
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 173,
                  height: 64,
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Toph Kamatayan',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cardiologists',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: 10),
                    Text('5.0 (1,872 reviews)'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Add space between the image and text
          Padding(
            padding: EdgeInsets.only(left: 15), // Adjust left padding as needed
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the start (left)
              children: [
                Text(
                  'About Me',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5), // Add space between title and description
                Text(
                  'Dr. Topher Paytal is the top most immunologists specialist in Crist Hospital in London, UK. She achived several awards for his wonderful contribution',
                  textAlign: TextAlign.left, // Align text to the left
                ),
                SizedBox(height: 10),
                Text(
                  'Doctor\'s Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5), // Add space between title and description
                Text('Full Name: Doctor Topher Kamatayan'),
                Text('Gender: Male'),
                Text('Age: 35'),
                Text('Education: Ateneo De Naga Univeristy'),
              ],
            ),
          ),

          Container(
            width: 327,
            height: 43,
            margin: EdgeInsets.only(top: 13),
            decoration: BoxDecoration(
              color: Color(0xFF42B9FE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                // Add functionality here
              },
              child: Text(
                'View Location',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
