import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/ui/widgets/static_data/item_details_text_fields.dart';

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
              height: deviceSize.height * 0.15,
              width: double.infinity,
              child: Icon(Icons.photo_camera),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Details of the Item',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
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
                  ItemDetailTextField(
                    title: 'Price',
                    isPrice: true,
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
