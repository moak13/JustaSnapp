import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/ui/widgets/static_data/auth_text_field.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 360, // This is the design width
      height: 640, // This is the design height
      allowFontScaling: true,
    );
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Container(
          height: ScreenUtil().setHeight(ScreenUtil.screenHeight),
          width: ScreenUtil().setWidth(ScreenUtil.screenWidth),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/bg_img.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                height: ScreenUtil().setHeight(ScreenUtil.screenHeight),
                width: ScreenUtil().setWidth(ScreenUtil.screenWidth),
                decoration: BoxDecoration(color: Colors.black45),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 73,
                          left: 107,
                          right: 108,
                          bottom: 3.5,
                        ),
                        child: Text(
                          'JustaSnapp',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(27),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 3.5,
                          left: 120,
                          right: 123,
                          bottom: 33.5,
                        ),
                        child: Text(
                          "Everyone's Market",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenUtil().setSp(14),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 33.5, left: 20, right: 20),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              AuthTextField(
                                label: 'Email',
                                hint: 'please enter your email',
                                inputType: TextInputType.emailAddress,
                              ),
                              AuthTextField(
                                label: 'Password',
                                hint: 'please enter your password',
                                inputType: TextInputType.text,
                                isPassword: true,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  height: ScreenUtil().setHeight(59),
                                  width: ScreenUtil().setWidth(321),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF031D44),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Login',
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
                              Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Text(
                                      'New to JustaSnapp?',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: ScreenUtil().setSp(14),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        ' Sign Up',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              color: Color(0xFFC80707),
                                              fontSize: ScreenUtil().setSp(14),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    )
                                  ])),
                            ],
                          ),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
