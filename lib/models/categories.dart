class Categories {
  // ignore: non_constant_identifier_names
  String? name, Image;
  // ignore: non_constant_identifier_names
  Categories({required this.name, required this.Image});
}

List<Categories> items = [
  Categories(name: "Roses", Image: "assets/RoseCat.jpg"),
  Categories(name: "Lilies", Image: "assets/LilyCat.png"),
  Categories(name: "Tulips", Image: "assets/TulipCat.png"),
  Categories(name: "Sunflower", Image: "assets/SunflowerCat.jpg"),
  Categories(name: "Carnations", Image: "assets/CarnationCat.jpg"),
  Categories(name: "Daisies", Image: "assets/DaisyCat.jpeg"),
];
