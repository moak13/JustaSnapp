import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
                // style: BorderStyle
              ),
              // borderRadius: BorderRadius.all(Radius.circular(10)),
              // color:Colors.grey,
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                title: Text('Location'),
                subtitle: Text('User location'),
                trailing: FlatButton(
                  child: Text('change',
                      style: TextStyle(color: Theme.of(context).errorColor)),
                  onPressed: () {},
                ),
              ),
              Divider(),
              ListTile(
                title: Text('About Us'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ),
              Divider(),
              ListTile(
                title: Text('Terms & Conditions'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                ),
              ),
              Divider(),
              ListTile(
                title: Text('Log Out'),
              ),
            ]),
          ),
        ));
  }
}
