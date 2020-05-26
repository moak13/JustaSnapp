import 'package:flutter/material.dart';

class TermsAndConditionsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Terms & Conditions'),
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('''User is soley ressponsible for his/her activities in relation to JustaSnapp Services''',
                  textAlign: TextAlign.justify),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '''User is prohibited from posting or distributing iinformation that are deforomatory, threatning or improper''',
                  textAlign: TextAlign.justify),
            )
          ],
        ),
      ),
    );
  }
}
