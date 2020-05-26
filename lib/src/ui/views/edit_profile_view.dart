import 'package:flutter/material.dart';
import 'package:justasnapp/src/ui/widgets/static_data/profile_button.dart';

// import ''

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 10, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Access Camera or Image Gallery
                  },
                  child: CircleAvatar(
                    minRadius: 60,
                    // radius: 60,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 100,
                    ),
                    backgroundColor: Colors.grey,
                  ),
                ),
                SizedBox(height: 40),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EditTextField(
                        label: 'Name',
                        suffixIcon: Icon(Icons.edit),
                      ),
                      SizedBox(height: 20),
                      EditTextField(
                        label: 'Email',
                        suffixIcon: Text('Edit'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      FlatButton(
                        onPressed: () {
                          // Change Password
                        },
                        textColor: Colors.lightBlueAccent,
                        child: Text(
                          'Change Password?',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: SaveProfileButton(
                          title: 'Save',
                          onTap: () {
                            //  Save Form
                            Navigator.of(context).pop();
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditTextField extends StatelessWidget {
  const EditTextField({
    Key key,
    @required this.label,
    @required this.suffixIcon,
    this.keyboardType,
  }) : super(key: key);
  final String label;
  final Widget suffixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: suffixIcon,
        ),
        textInputAction: TextInputAction.done,
        keyboardType: keyboardType);
  }
}
