class FoodItem {
  final String title;
  final String category;

  FoodItem({
    required this.category,
    required this.title,
  });
}

List<FoodItem> loadFoodItem() {
  var fi = <FoodItem>[
    FoodItem(
      category: "MilkShakes",
      title: "Chocolate MilkShake",
    ),
    FoodItem(
      category: "MilkShakes",
      title: "Strawberry MilkShake",
    ),
    FoodItem(
      category: "MilkShakes",
      title: "Tender Coconut MilkShake",
    ),
    FoodItem(
      category: "MilkShakes",
      title: "Oreo MilkShake",
    ),
    FoodItem(
      category: "MilkShakes",
      title: "Apple MilkShake",
    ),
    FoodItem(
      category: "MilkShakes",
      title: "Butterfruit MilkShake",
    ),
    FoodItem(
      category: "Juice",
      title: "Watermellon Juice",
    ),
    FoodItem(
      category: "Juice",
      title: "Orange Juice",
    ),
    FoodItem(
      category: "Juice",
      title: "Kiwi Juice",
    ),
    FoodItem(
      category: "Juice",
      title: "Sweet Lemon Juice",
    ),
    FoodItem(
      category: "Juice",
      title: "Salty Lemon Juice",
    ),
    FoodItem(
      category: "Juice",
      title: "Sweet & Salt Lemon Juice",
    ),
    FoodItem(
      category: "Lassi",
      title: "Banana Lassi",
    ),
    FoodItem(
      category: "Lassi",
      title: "Sweet Lassi",
    ),
    FoodItem(
      category: "Lassi",
      title: "Salted Lassi",
    ),
    FoodItem(
      category: "Lassi",
      title: "Sweet & Salt Lassi",
    ),
    FoodItem(
      category: "Lassi",
      title: "Fruit Lassi",
    ),
    FoodItem(
      category: "Lassi",
      title: "Dry fruit Lassi",
    ),
  ];
  return fi;
}
