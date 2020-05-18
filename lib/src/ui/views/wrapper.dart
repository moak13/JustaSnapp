import 'package:flutter/material.dart';
import 'package:justasnapp/src/ui/views/favourite_view.dart';
import 'package:justasnapp/src/ui/views/home_view.dart';
import 'package:justasnapp/src/ui/views/message_view.dart';
import 'package:justasnapp/src/ui/views/profile_view.dart';

class Wrapper extends StatefulWidget {
  Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  String _title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(_title),
        centerTitle: true,
        backgroundColor: Color(0xFF031D44),
        actions: <Widget>[
          _currentIndex == 3
              ? IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.settings),
                  onPressed: () {},
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
                switch (val) {
                  case 0:
                    {
                      _title = 'JustaSnapp';
                    }
                    break;
                  case 1:
                    {
                      _title = 'Favorite';
                    }
                    break;
                  case 2:
                    {
                      _title = 'Message';
                    }
                    break;
                  case 3:
                    {
                      _title = 'Profile';
                    }
                    break;
                }
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
