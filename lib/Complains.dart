import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// import 'package:hostel_management_system/Dashboard.dart';
import 'package:hostel_management_system/rooms.dart';
import 'package:hostel_management_system/Directmsg.dart';
import 'package:hostel_management_system/student.dart';
import 'package:hostel_management_system/warden.dart';

import 'Msg_Menu.dart';
import 'Notice.dart';

class Complains extends StatelessWidget {
  const Complains({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Complainss(),
    );
  }
}

class Complainss extends StatefulWidget {
  const Complainss({Key? key}) : super(key: key);

  @override
  State<Complainss> createState() => _ComplainssState();
}

class _ComplainssState extends State<Complainss> {
  int pageno = 3;
  List<Widget> _pages = [
    Warden(
      username: '',
    ),
    Rooms(),
    Complains(),
    Msg_Menu(),
    Notice(),
    Direct_Msg(),
    // Add more pages here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Set the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          title: Text(
            'Complains',
            style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue, // Set the background color to blue
              ),
              padding: const EdgeInsets.all(10), // Add some padding
              child: Text(
                'Warden Complains', // The text to display
                style: TextStyle(
                    color: Colors.white, // Set the font color to white
                    fontSize: 40,
                    fontWeight: FontWeight.bold // Set the font size
                    ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
              child: TextFormField(
            maxLines: 7, // Set the maximum number of lines
            decoration: InputDecoration(
              filled: true, // Set the background color
              fillColor:
                  Colors.grey[300], // Set the background color to ash color
              border: OutlineInputBorder(
                // Set the border
                borderRadius:
                    BorderRadius.circular(10), // Set the border radius
                borderSide: BorderSide(
                    color: Colors.blue), // Set the border color to blue
              ),
              enabledBorder: OutlineInputBorder(
                // Set the enabled border
                borderRadius:
                    BorderRadius.circular(10), // Set the border radius
                borderSide: BorderSide(
                    color: Colors.blue), // Set the border color to blue
              ),
              focusedBorder: OutlineInputBorder(
                // Set the focused border
                borderRadius:
                    BorderRadius.circular(10), // Set the border radius
                borderSide: BorderSide(
                    color: Colors.blue), // Set the border color to blue
              ),
              labelText: 'Enter Your Complain',
            ),
          )),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 270.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // border radius
                  ),
                ),
                onPressed: () {
                  // button press action
                },
                child: Text(
                  'Send',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blueAccent,
        color: Colors.blueAccent,
        animationDuration: const Duration(milliseconds: 300),
        index: 2,
        items: const [
          Icon(Icons.home, size: 26, color: Colors.white),
          Icon(Icons.hotel, size: 26, color: Colors.white),
          Icon(Icons.warning, size: 26, color: Colors.white),
          Icon(Icons.menu, size: 26, color: Colors.white),
          Icon(Icons.notification_add, size: 26, color: Colors.white),
          Icon(Icons.message, size: 26, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            //  _page = index;
            // Update _page or navigate to a different screen based on index
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => _pages[index]),
            );
          });
        },
      ),
    );
  }
}
