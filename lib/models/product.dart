class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {this.id,
      this.price,
      this.title,
      this.subTitle,
      this.description,
      this.image});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 8,
    title: "Al-Rajeh Company",
    subTitle: "cleaning products",
    image: "images/alrajeh.png",
    description: "Palestine-Nablus",
  ),
  Product(
    id: 2,
    price: 9,
    title: "Bravo Super market",
    subTitle: "Grocery store",
    image: "images/bravo.png",
    description: "Palestine-Nablus-Byte Wazan",
  ),
  Product(
    id: 3,
    price: 9,
    title: "Al-Quds Company",
    subTitle: "Pharmaceuticals",
    image: "images/jerusalemm.png",
    description: "",
  ),
  Product(
    id: 4,
    price: 7,
    title: "Shini Store",
    subTitle: "Grocery store",
    image: "images/shenii.png",
    description: "",
  ),
  Product(
    id: 5,
    price: 7,
    title: "AL-Dolphin LTD",
    subTitle: "Sanitary ware",
    image: "images/dolphinn.png",
    description: "",
  ),
  Product(
    id: 6,
    price: 6,
    title: "Cosmoline",
    subTitle: "Cosmetics Store",
    image: "images/cosmo.png",
    description: "",
  ),
];
