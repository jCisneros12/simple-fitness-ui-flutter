class MyRecommendation {
  String name, description, image;

  MyRecommendation(
      {required this.name, required this.description, required this.image});

  static List<MyRecommendation> getRecommendationList() {
    return [
      MyRecommendation(
        name: "Honey Pancake",
        description: "Easy | 30mins | 180kCal",
        image: "assets/images/honey-pancakes.svg",
      ),
      MyRecommendation(
        name: "Canai Bread",
        description: "Easy | 20mins | 230kCal",
        image: "assets/images/bread.svg",
      ),
      MyRecommendation(
        name: "Honey Pancake",
        description: "Easy | 30mins | 180kCal",
        image: "assets/images/honey-pancakes.svg",
      ),
      MyRecommendation(
        name: "Canai Bread",
        description: "Easy | 20mins | 230kCal",
        image: "assets/images/bread.svg",
      ),
    ];
  }
}
