import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/util/screen_util.dart';

class AboutJustaSnappView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About JustaSnapp'),
        leading: IconButton(
          splashColor: Colors.transparent,
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'JustaSnapp',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil(context).setSp(percentage: 65),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Everyone's Market",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil(context).setSp(percentage: 35),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Contact us: support@justasnapp.ng',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil(context).setSp(percentage: 35),
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
      ),
    );
  }
}
