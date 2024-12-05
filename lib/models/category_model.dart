class CategoryModel{

 
 final String title;
 final String photo;
 final String description;
 final String year;
 final String time;
 final String rating;
 final String? link;


  CategoryModel({required this.photo,
  required this.description, required this.year, required this.time, required this.rating, this.link, 
     required
     this.title});



factory CategoryModel.fromJson(json){
 return CategoryModel(
  photo: json['image'] ?? '',
   description: json['description']?? 'No description available',
    year: json['year'] ??'Unknown year',
     time: json['timeline'] ??'Unknown time',
      rating: json['imdbRating']??'N/A', 
      title:json['title']?? 'Untitled',
      link: json['link'],);
}


}