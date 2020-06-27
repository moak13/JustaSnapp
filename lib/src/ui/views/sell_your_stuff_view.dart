import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/models/product.dart';
import 'package:justasnapp/src/models/product_model.dart';
import 'package:justasnapp/src/ui/widgets/static_data/image_input.dart';
import 'package:justasnapp/src/ui/widgets/static_data/item_details_text_fields.dart';
import 'package:justasnapp/src/util/screen_util.dart';

enum Location { Lagos, Ibadan, Abuja }
Location _location = Location.Abuja;

class SellYourStuffView extends StatefulWidget {
  @override
  _SellYourStuffViewState createState() => _SellYourStuffViewState();
}

class _SellYourStuffViewState extends State<SellYourStuffView> {
  final _form = GlobalKey<FormState>();
  var product = Product(
    item: '',
    category: null,
    description: '',
    phoneNumber: null,
    location: null,
    price: 0,
  );

  void _saveForm() {
    _form.currentState.save();
    print(product.description);
    
  }

  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Sell Your Stuff')),
      backgroundColor: Color(0XFFEDEDED),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: <Widget>[
            // ImageInput(),
            ImageInput(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Details of the Item',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    // color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Form(
              key: _form,
              child: Column(
                children: <Widget>[
                  ItemDetailTextField(
                    title: 'Item',
                  ),

                  SizedBox(height: 20),
                  // Text('Location', ),
                  Container(
                    height: 60,
                    child: Center(
                      child: FormField(
                          builder: (context) => InputDecorator(
                                decoration: InputDecoration(
                                    hintText: 'Select a location',
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide.none,
                                    )),
                                child: DropdownButton<Location>(
                                    value: _location,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text('Lagos'),
                                        value: Location.Lagos,
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Ibadan'),
                                        value: Location.Ibadan,
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Abuja'),
                                        value: Location.Abuja,
                                      ),
                                    ],
                                    onChanged: (Location loc) {
                                      setState(() {
                                        _location = loc;
                                      });
                                    }),
                              )),
                    ),
                  ),
                  // ),
                  ItemDetailTextField(
                    title: 'Description',
                    maxline: 7,
                    onSaved: (value) {
                      product = Product(
                          item: product.item,
                          description: value,
                          phoneNumber: product.phoneNumber,
                          price: product.price);
                    },
                  ),
                  ItemDetailTextField(
                    title: 'Location',
                  ),
                  ItemDetailTextField(
                    title: 'Phone Number',
                    textInputType: TextInputType.number,
                    onSaved: (value) {
                      product = Product(
                          item: product.item,
                          description: product.description,
                          phoneNumber: int.parse(value),
                          price: product.price);
                    },
                  ),
                  ItemDetailTextField(
                    title: 'Price',
                    isPrice: true,
                    textInputType: TextInputType.number,
                    onSaved: (value) {
                      product = Product(
                        item: product.item,
                        description: product.description,
                        phoneNumber: product.phoneNumber,
                        price: double.parse(value),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: _saveForm,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          'POST',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  ScreenUtil(context).setSp(percentage: 40),
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // DropdownButton<Location>(items: [], onChanged: null),
          ],
        ),
      )),
    );
  }
}
