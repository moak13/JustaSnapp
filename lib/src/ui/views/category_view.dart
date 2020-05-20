import 'package:flutter/material.dart';
import 'package:justasnapp/src/models/category_model.dart';
import 'package:justasnapp/src/ui/widgets/live_data/rectangular_category.dart';

class CategoryView extends StatefulWidget {
  CategoryView({Key key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<CategoryModel> data = category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return RectangularCategory(
              title: data[index].title,
              ads: data[index].ads,
            );
          }),
    );
  }
}
