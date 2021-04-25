import 'package:recipes/app/data/model/category_model.dart';

class Recipe {
  int id;
  Category category;
  String name;
  String description;
  String image;
  List<String> ingredients;
  String slug;
  String createdAt;

  Recipe({
    this.id,
    this.category,
    this.name,
    this.description,
    this.image,
    this.ingredients,
    this.slug,
    this.createdAt,
  });

  Recipe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'] != null ? new Category.fromJson(json['category']) : null;
    name = json['name'];
    description = json['description'];
    image = json['image'];
    ingredients = json['ingredients'].cast<String>();
    slug = json['slug'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['ingredients'] = this.ingredients;
    data['slug'] = this.slug;
    data['created_at'] = this.createdAt;
    return data;
  }
}
