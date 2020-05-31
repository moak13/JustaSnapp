import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType inputType;
  final bool isPassword;
  final bool obscureText;
  final TextEditingController controller;
  final Function toggle;
  const AuthTextField(
      {Key key,
      @required this.label,
      @required this.hint,
      this.inputType,
      this.isPassword = false,
      this.obscureText,
      this.controller,
      this.toggle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: isPassword
          ? TextFormField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: inputType,
              decoration: InputDecoration(
                labelText: label,
                hintText: hint,
                suffixIcon: IconButton(
                    icon: obscureText
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    onPressed: () => toggle),
                fillColor: Colors.white,
                filled: true,
              ))
          : TextFormField(
              controller: controller,
              obscureText: false,
              keyboardType: inputType,
              decoration: InputDecoration(
                labelText: label,
                hintText: hint,
                fillColor: Colors.white,
                filled: true,
              )),
    );
  }
}
