import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hostel_management_system/Directmsg.dart';
import 'package:hostel_management_system/Notice.dart';
import 'package:hostel_management_system/complains.dart';
import 'package:hostel_management_system/rooms.dart';
import 'package:hostel_management_system/warden.dart';

// import '../Dashboard.dart';
// import '../rooms.dart';
// import 'Complains.dart';
// import 'Directmsg.dart';

class Msg_Menu extends StatelessWidget {
  const Msg_Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Msgmenuu(),
    );
  }
}

class Msgmenuu extends StatefulWidget {
  const Msgmenuu({Key? key}) : super(key: key);

  @override
  State<Msgmenuu> createState() => _MsgmenuuState();
}

class _MsgmenuuState extends State<Msgmenuu> {
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
            'Message Menu',
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
          Spacer(),
          Row(
            children: [
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // border radius
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notice()),
                  );
                  // button press action
                },
                child: Text(
                  'Notice',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            children: [
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // border radius
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Direct_Msg()),
                  );
                  // button press action
                },
                child: Text(
                  'Direct Message',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
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
        index: 3,
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
            //_page = index;
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
