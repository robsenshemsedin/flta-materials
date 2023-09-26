part of 'explore_recipe.dart';

class Ingredients {
  String imageUrl;
  String title;
  String source;

  Ingredients({
    required this.imageUrl,
    required this.title,
    required this.source,
  });

  factory Ingredients.fromJeson(Map<String,dynamic> jeson){
    return Ingredients(imageUrl: jeson['imageUrl']?? '', title: jeson['title'], source: jeson['source'])
  }
}
