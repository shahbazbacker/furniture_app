class Category {
  int id;
  String name;
  String icon;

  Category({this.id, this.name, this.icon});
}

List<Category> demoCategories = [
  Category(id: 1, name: 'Armchair', icon: 'assets/icons/food.svg'),
  Category(id: 2, name: 'Bed', icon: 'assets/icons/drinks.svg'),
  Category(id: 3, name: 'Lamp', icon: 'assets/icons/fruit.svg'),
  Category(id: 4, name: 'Sofa', icon: 'assets/icons/vege.svg'),
];
