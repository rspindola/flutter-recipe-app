class Category {
  String name;
  String description;
  String icon;
  String slug;
  String updatedAt;
  String createdAt;
  int id;

  Category({this.name, this.description, this.icon, this.slug, this.updatedAt, this.createdAt, this.id});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    icon = json['icon'];
    slug = json['slug'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['slug'] = this.slug;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
