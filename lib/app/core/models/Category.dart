class Category {
  final String title;
  final String subTitle;
  final String img;

  const Category({
    required this.title,
    required this.subTitle,
    required this.img,
  });
}

const List<Category> categoryItem = [
  Category(
    title: "Calculated Weather ",
    subTitle: "Built Wicket longer admire do barton vanity itself do in it.",
    img: "assets/images/cat1.png",
  ),
  Category(
    title: "Best Flights",
    subTitle: "Engrossed listening. Park gate sell they west hard for the.",
    img: "assets/images/cat2.png",
  ),
  Category(
    title: "Local Events",
    subTitle:
        "Barton vanity itself do in it. Preferd to men it engrossed listening. ",
    img: "assets/images/cat3.png",
  ),
  Category(
    title: "Customization",
    subTitle: "We deliver outsourced aviation services for military customers",
    img: "assets/images/cat4.png",
  ),
];
