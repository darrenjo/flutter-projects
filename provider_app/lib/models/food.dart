class Food {
  String id;
  String title;
  String category;
  List<String> ingredients;
  int duration;
  String imageUrl;

  Food({
    required this.id,
    required this.title,
    required this.category,
    required this.ingredients,
    required this.duration,
    required this.imageUrl,
  });
}
