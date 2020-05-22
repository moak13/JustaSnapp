import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SellYourStuffView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Sell Your Stuff')),
      backgroundColor: Color(0XFFEDEDED),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFFC4C4C4),
              height: 150,
              width: double.infinity,
              child: Icon(Icons.photo_camera),
            ),
            Text('Details of the Item'),
            Form(
              child: Column(
                children: <Widget>[
                  ItemDetailTextField(
                    title: 'Item',
                  ),
                  ItemDetailTextField(
                    title: 'Category',
                  ),
                  ItemDetailTextField(
                    title: 'Description',
                    maxline: 7,
                  ),
                  ItemDetailTextField(
                    title: 'Location',
                  ),
                  ItemDetailTextField(
                    title: 'Phone Number',
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ItemDetailTextField extends StatelessWidget {
  final String title;
  final int maxline;
  const ItemDetailTextField({
    this.title,
    this.maxline,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextFormField(
          maxLines: maxline,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              )),
        ),
      ],
    );
  }
}
