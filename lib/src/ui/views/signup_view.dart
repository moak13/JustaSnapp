import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/ui/views/wrapper.dart';
import 'package:justasnapp/src/ui/widgets/static_data/auth_botton.dart';
import 'package:justasnapp/src/ui/widgets/static_data/auth_text_field.dart';
import 'package:justasnapp/src/util/screen_util.dart';
import 'package:justasnapp/src/viewmodels/signup_view_model.dart';
import 'package:stacked/stacked.dart';

class SignupView extends StatefulWidget {
  SignupView({Key key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.grey[400],
          body: SafeArea(
            child: SingleChildScrollView(
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
                                  top: 40, left: 20, bottom: 24),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      color: Colors.white,
                                      icon: Icon(Icons.cancel),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      }),
                                  Text(
                                    "Sign Up",
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: ScreenUtil(context)
                                            .setSp(percentage: 40),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 24, left: 20, right: 20),
                              child: Form(
                                child: Column(
                                  children: <Widget>[
                                    AuthTextField(
                                      label: 'Full name',
                                      hint: 'please enter your name',
                                      inputType: TextInputType.text,
                                    ),
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
                                    AuthTextField(
                                      label: 'Phone number',
                                      hint: 'please enter your number',
                                      inputType: TextInputType.number,
                                    ),
                                    AuthBotton(
                                      title: 'Register',
                                      onBusy: model.isBusy,
                                      child: Wrapper(),
                                    ),
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
          ),
        );
      },
      viewModelBuilder: () => SignupViewModel(),
    );
  }
}
