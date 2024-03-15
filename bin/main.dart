// Function to display details of each fruit
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

// Function to apply discount to each fruit price
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double _discount) {
  for (var fruit in fruits) {
    fruit['price'] = (fruit['price'] as double) * (1 - _discount);
  }
}

void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];

  // show the orginal list of fruits.
  print("\nOriginal Fruit Details before Discount:");
  displayFruitDetails(fruits);

  double _discount = 10 / 100; // apply 10% discount question wise
  applyPriceDiscount(fruits, _discount);

  // applying discount and show the result
  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}
