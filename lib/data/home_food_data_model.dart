class HomeFoodDataModel{
  final String? title;
  final String? description;
  final String? image;

  HomeFoodDataModel(this.title, this.description, this.image);
  
  // Getter methods
  String? getTitle() => title;
  String? getDescription() => description;
  String? getImage() => image;
}