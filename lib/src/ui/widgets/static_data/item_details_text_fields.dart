import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetailTextField extends StatelessWidget {
  final String title;
  final int maxline;
  final bool isPrice;
  final Widget suffixIcon;
  final Function onSaved;
  final TextInputType textInputType;

  const ItemDetailTextField({
    @required this.title,
    this.isPrice = false,
    this.maxline,
    this.suffixIcon,
    this.textInputType,
    this.onSaved,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            title,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                // color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        isPrice
            ? Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30))),
                      child: TextFormField(
                        maxLines: maxline,
                        onSaved: onSaved,
                        keyboardType: textInputType,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      height: deviceSize.height * 0.086,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      child: Center(
                        child: Text(
                          'NAIRA',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            : TextFormField(
                maxLines: maxline,
                decoration: InputDecoration(
                    filled: true,
                    suffixIcon: suffixIcon,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    )),
              )
      ],
    );
  }
}
