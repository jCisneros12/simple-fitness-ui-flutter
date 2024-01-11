class MyCategory {
  String name;
  String image;

  MyCategory({required this.name, required this.image});

  static List<MyCategory> getCategoryList() {
    return [
      MyCategory(name: "Salad", image: "assets/images/plate2.svg"),
      MyCategory(name: "Cake", image: "assets/images/pancakes.svg"),
      MyCategory(name: "Pie", image: "assets/images/plate3.svg"),
      MyCategory(name: "Smoothies", image: "assets/images/orange-snacks.svg")
    ];
  }
}