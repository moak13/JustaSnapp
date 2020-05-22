import 'package:flutter/material.dart';

class RectangularCategory extends StatelessWidget {
  final String title;
  final int ads;
  const RectangularCategory({Key key, this.title, this.ads}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.5, left: 10, right: 10, bottom: 2.5),
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(ads.toString() + ' ads'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
