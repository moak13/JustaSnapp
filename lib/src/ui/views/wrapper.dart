import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/ui/views/favourite_view.dart';
import 'package:justasnapp/src/ui/views/home_view.dart';
import 'package:justasnapp/src/ui/views/message_view.dart';
import 'package:justasnapp/src/ui/views/profile_view.dart';
import 'package:justasnapp/src/ui/views/sell_your_stuff_view.dart';
import 'package:justasnapp/src/ui/views/settings_view.dart';

class Wrapper extends StatefulWidget {
  Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => SellYourStuffView()),
          );
        },
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          _currentIndex == 0
              ? 'JustaSnapp'
              : _currentIndex == 1
                  ? 'Favorite'
                  : _currentIndex == 2 ? 'Message' : 'Profile',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF031D44),
        actions: <Widget>[
          _currentIndex == 3
              ? IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SettingsView(),
                      ),
                    );
                  },
                  tooltip: 'settings',
                )
              : IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  tooltip: 'search',
                )
        ],
      ),
      body: IndexedStack(index: _currentIndex, children: [
        HomeView(),
        FavouriteView(),
        MessageView(),
        ProfileView(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (val) {
            if (mounted) {
              setState(() {
                _currentIndex = val;
              });
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('Message'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ]),
    );
  }
}
