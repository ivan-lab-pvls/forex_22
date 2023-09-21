class NewsModel {
  final String title;
  final String description;
  final String image;
  final String date;

  const NewsModel(
      {required this.title,
      required this.description,
      required this.image,
      this.date = 'n'});
}
