import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType inputType;
  final bool isPassword;
  const AuthTextField(
      {Key key,
      @required this.label,
      @required this.hint,
      this.inputType,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: TextFormField(
          obscureText: isPassword ? true : false,
          keyboardType: inputType,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            suffixIcon: isPassword
                ? IconButton(icon: Icon(Icons.visibility), onPressed: () {})
                : null,
            fillColor: Colors.white,
            filled: true,
          )),
    );
  }
}
