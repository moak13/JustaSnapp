import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/ui/views/login_view.dart';

class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  // This function is use to automatically navigate
  void _next() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginView(),
      ),
    );
  }

  // This function is triggered when the screen is done.
  Future<Timer> onLoadingDone() async {
    Duration _duration = Duration(seconds: 15); // This sets the delay in which the splash screen awaits before auto routing.
    return Timer(_duration, _next);
  }

  @override
  void initState() { 
    super.initState();
    onLoadingDone();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 360, // This is the design width
      height: 640, // This is the design height
      allowFontScaling: true,
    );
    return Scaffold(
      body: Container(
        height: ScreenUtil().setHeight(ScreenUtil.screenHeight),
        width: ScreenUtil().setWidth(ScreenUtil.screenWidth),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/bg_img.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 110,
                  left: 86,
                  right: 86,
                  bottom: 2.5,
                ),
                child: Text(
                  'JustaSnapp',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(35),
                      color: Color(0XFF303C42),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 2.5,
                  left: 115,
                  right: 115,
                  bottom: 465,
                ),
                child: Text(
                  "Everyone's Market",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(16),
                      color: Color(0XFF303C42),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
