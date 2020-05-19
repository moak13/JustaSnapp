import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: deviceSize.height * 0.2,
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person, color: Colors.white),
                  backgroundColor: Colors.grey,
                ),
                title: Text('User Name'),
                subtitle: Text(
                  'User Email',
                ),
              ),
            ),
          ),
          DefaultTabController(
            length: 2,
            child: Expanded(
              child: SizedBox(
                // height: 200,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: deviceSize.height * 0.1,
                      width: double.infinity,
                      color: Color(0xffededed),
                      child: TabBar(
                        labelColor: Theme.of(context).primaryColor,
                        indicatorColor: Theme.of(context).primaryColor,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                        tabs: [
                          Text('Selling',),
                          Text('Sold'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            // color: Colors.green,
                            child: Center(
                                child: Text(
                                    'You don\'t have any item on Sale Yet')),
                          ),
                          Container(
                            // color: Colors.blue,
                            child: Center(
                                child: Text('You have not sold any item yet')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
