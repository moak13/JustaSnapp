import 'package:flutter/material.dart';

class FavouriteView extends StatefulWidget {
  FavouriteView({Key key}) : super(key: key);

  @override
  _FavouriteViewState createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Favourite View'),
      ),
    );
  }
}