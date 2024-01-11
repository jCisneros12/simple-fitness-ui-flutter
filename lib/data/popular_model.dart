class PopularMoodel {
  String name, description, image;

  PopularMoodel({
    required this.name,
    required this.description,
    required this.image,
  });

  static List<PopularMoodel> getPopularList() {
    return [
      PopularMoodel(
        name: "Blueberry Pancake",
        description: "Medium | 30mins | 230kCal",
        image: "assets/images/pancake-2.svg",
      ),
      PopularMoodel(
        name: "Salmon Nigiri",
        description: "Medium | 20mins | 120kCal",
        image: "assets/images/nigiri-1.svg",
      ),
      PopularMoodel(
        name: "Lowfat Milk",
        description: "Medium | 10mins | 150kCal",
        image: "assets/images/glass-of-milk 1.svg",
      ),
    ];
  }
}
