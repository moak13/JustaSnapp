class CategoryModel {
  final String title;
  final int ads;
  final String img;

  CategoryModel({this.title, this.ads, this.img});
}

List<CategoryModel> category = [
  CategoryModel(title: 'Electronics', ads: 33),
  CategoryModel(title: 'Foods', ads: 33),
  CategoryModel(title: 'Phones & Tablet', ads: 33),
  CategoryModel(title: 'Service', ads: 33),
  CategoryModel(title: 'Fashion', ads: 33),
  CategoryModel(title: 'Real Estate', ads: 33),
  CategoryModel(title: 'Entertainments', ads: 33),
  CategoryModel(title: 'Cars', ads: 33),
  CategoryModel(title: 'Others', ads: 33)
];
