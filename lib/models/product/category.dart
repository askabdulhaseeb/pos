class Category {
  const Category({
    required this.title,
    required this.catID,
    required this.depID,
  });
  final String title;
  final String catID; // unique, auto
  final String depID;
}
