import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
          height: ScreenUtil().setHeight(59),
          width: ScreenUtil().setWidth(321),
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
                  fontSize: ScreenUtil().setSp(18),
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
