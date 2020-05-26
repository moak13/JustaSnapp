import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/util/screen_util.dart';

class AuthBotton extends StatelessWidget {
  final String title;
  final Widget child;
  const AuthBotton({Key key, this.title, this.child}) : super(key: key);

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
          height: ScreenUtil(context).setHeight(height: 59),
          width: ScreenUtil(context).setWidth(width: 321),
          decoration: BoxDecoration(
            color: Color(0xFF031D44),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil(context).setSp(percentage: 18),
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
