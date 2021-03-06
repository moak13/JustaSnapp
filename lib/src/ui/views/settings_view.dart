import 'package:flutter/material.dart';
import 'package:justasnapp/src/ui/views/terms&conditions_view.dart';
import 'package:justasnapp/src/ui/views/aboutJustaSnapp_view.dart';

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
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: <Widget> [
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
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (contex) => AboutJustaSnappView(),
                  ),
                );
              },
              child: ListTile(
                title: Text('About Us'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (contex) => TermsAndConditionsView(),
                  ),
                );
              },
              child: ListTile(
                title: Text('Terms & Conditions'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    color: Theme.of(context).errorColor,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
