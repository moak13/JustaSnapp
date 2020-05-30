import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/util/screen_util.dart';

class AuthBotton extends StatelessWidget {
  final String title;
  final Widget child;
  final bool onBusy;
  const AuthBotton({Key key, this.title, this.child, this.onBusy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => child),
          );
        },
        child: Container(
          height: ScreenUtil(context).setHeight(height: 10),
          width: ScreenUtil(context).setWidth(width: 0.76),
          decoration: BoxDecoration(
            color: Color(0xFF031D44),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: onBusy ? CircularProgressIndicator() : Text(
              title,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil(context).setSp(percentage: 40),
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
