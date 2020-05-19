import 'package:flutter/material.dart';
import 'package:justasnapp/src/ui/widgets/profile_button.dart';
import 'package:justasnapp/src/ui/widgets/static_data/auth_text_field.dart';
// import ''

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  AuthTextField(
                    label: 'Name',
                    hint: 'Enter your User Name',
                    inputType: TextInputType.text,
                    isPassword: false,
                  ),
                  AuthTextField(
                    label: 'Email',
                    hint: 'Enter your Email',
                    inputType: TextInputType.emailAddress,
                    isPassword: false,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Change Password?',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                  SaveProfileButton(
                    title: 'Save',
                    onTap: () {
                      //  Save Form
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
