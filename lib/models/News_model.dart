class NewsModel {
  final String title;
  final String photo;
  final String description;
  final String Writer;
  final String date;
  final String source;
  final String? link;

  NewsModel( 
      {
        required this.Writer, required this.date, required this.source,
        required this.photo,
      required this.description,
      this.link,
      required this.title, });

  factory NewsModel.fromJson(json) {
    return NewsModel(
      Writer: json['writer'] ?? 'No Writer',
      photo: json['image'] ?? '',
      description: json['description'] ?? 'No description available',
      date : json['date'] ?? 'Unknown date',
      source: json['source'] ?? 'Unknown source',
      title: json['title'] ?? 'Untitled',
      link: json['link'],
    );
  }
}
