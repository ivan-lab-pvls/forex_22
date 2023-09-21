class CommunityModel {
  final String title;
  final String description;
  final String image;
  final String author;
  final String date;

  const CommunityModel(
      {required this.title,
        required this.description,
        required this.author,
        required this.image,
        this.date = 'n'});
}