import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justasnapp/src/models/category_model.dart';
import 'package:justasnapp/src/models/product_model.dart';
import 'package:justasnapp/src/ui/views/category_view.dart';
import 'package:justasnapp/src/ui/widgets/live_data/circular_category.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<CategoryModel> data = category;
  final List<ProductModel> productData = product;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: FlatButton(
                    child: Text(
                      'View All',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.red),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CategoryView(),
                        ),
                      );
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: deviceSize.height * 0.15,
                child: ListView.builder(
                    padding: const EdgeInsets.all(4),
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return CircularCategory(
                        img: index.toString(),
                        title: data[index].title,
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                  alignment: Alignment.centerLeft, child: Text('Hot Deals')),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: deviceSize.height * 0.47,
                child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: productData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: deviceSize.height * 0.1,
                              width: double.infinity,
                              color: productData[index].color,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              height: deviceSize.height * 0.05,
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(productData[index].title),
                                  Text(productData[index].amount.toString()),
                                  Text(productData[index].location),
                                ],
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
