class Item {
  int id;
  String name;
  String description;
  String image;
  double rating;

  double price;

  Item({
    this.id,
    this.name,
    this.description,
    this.image,
    this.rating,
    this.price,
  });
}

List<Item> demoItems = [
  Item(
    id: 1,
    name: 'Tortor Chair',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/furniture4.png',
    rating: 4.5,
    price: 256.00,
  ),
  Item(
    id: 2,
    name: 'Morbi Chair',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/furniture2.png',
    rating: 4.8,
    price: 284.00,
  ),
  Item(
    id: 3,
    name: 'Petium Chair',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/furniture3.png',
    rating: 4.3,
    price: 232.00,
  ),
  Item(
    id: 4,
    name: 'Blandit Chair',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/furniture1.png',
    rating: 4.1,
    price: 6.5,
  ),
  Item(
    id: 5,
    name: 'Jack Chair',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/furniture5.png',
    rating: 4.1,
    price: 6.5,
  ),
  Item(
    id: 6,
    name: 'Hacket Chair',
    description:
        "This Fruit Soup may use jelly which is diced as well to add flavor and crowd to the Fruit Soup. I didn't have time to make the jelly, so I didn't use it",
    image: 'assets/images/furniture6.png',
    rating: 4.1,
    price: 6.5,
  ),
];
