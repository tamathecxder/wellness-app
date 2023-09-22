class Category {
  final String title;
  bool isActive;

  Category({required this.title, this.isActive = false});
}

List<Category> categoryList = [
  Category(title: 'Trending'),
  Category(title: 'Relationship'),
  Category(title: 'Self Care'),
];
