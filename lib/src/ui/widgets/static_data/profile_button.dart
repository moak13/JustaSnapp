import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/util/screen_util.dart';

class SaveProfileButton extends StatelessWidget {
  final String title;
  final Function onTap;

  SaveProfileButton({this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: deviceSize.height * 0.07,
          width: deviceSize.width * 0.7,
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
                  fontSize: ScreenUtil(context).setSp(percentage: 45),
                  fontWeight: FontWeight.bold,
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
