import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/ui/views/signup_view.dart';
import 'package:justasnapp/src/ui/views/wrapper.dart';
import 'package:justasnapp/src/ui/widgets/static_data/auth_botton.dart';
import 'package:justasnapp/src/ui/widgets/static_data/auth_text_field.dart';
import 'package:justasnapp/src/util/screen_util.dart';
import 'package:justasnapp/src/viewmodels/login_view_model.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatefulWidget {
  LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.grey[400],
          body: SafeArea(
            child: Container(
              height: ScreenUtil(context).setHeight(),
              width: ScreenUtil(context).setWidth(),
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
                    height: ScreenUtil(context).setHeight(),
                    width: ScreenUtil(context).setWidth(),
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
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 27),
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
                                  fontSize:
                                      ScreenUtil(context).setSp(percentage: 14),
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
                                  AuthBotton(
                                    title: 'Login',
                                    child: Wrapper(),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'New to JustaSnapp?',
                                              style: GoogleFonts.roboto(
                                                textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        ScreenUtil(context)
                                                            .setSp(
                                                                percentage: 14),
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignupView(),
                                                  ),
                                                  //model.login(email: null, password: null)
                                                );
                                              },
                                              child: Text(
                                                ' Sign Up',
                                                style: GoogleFonts.roboto(
                                                  textStyle: TextStyle(
                                                      color: Color(0xFFC80707),
                                                      fontSize:
                                                          ScreenUtil(context)
                                                              .setSp(
                                                                  percentage:
                                                                      14),
                                                      fontWeight:
                                                          FontWeight.w500),
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
      },
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
