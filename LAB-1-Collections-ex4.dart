import 'dart:io';

class ShoppingCart {
  final Map<String, int> cartItems = {};

  void addItem(String productName, int quantity) {
    cartItems[productName] = cartItems.containsKey(productName)
        ? cartItems[productName]! + quantity
        : quantity;
  }

  void removeItem(String productName) {
    if (cartItems.containsKey(productName)) {
      cartItems.remove(productName);
      print("$productName removed from the cart.");
    } else {
      print("$productName not found in the cart.");
    }
  }

  double calculateTotalPrice(Map<String, double> productPrices) {
    double totalPrice = 0;
    for (var entry in cartItems.entries) {
      final productName = entry.key;
      final quantity = entry.value;
      final price = productPrices[productName] ?? 0;
      totalPrice += price * quantity;
    }
    return totalPrice;
  }

  void displayCartItems() {
    print("\nCurrent Items in Cart:");
    for (var entry in cartItems.entries) {
      print("${entry.key} - ${entry.value}");
    }
  }
}

void main() {
  final shoppingCart = ShoppingCart();
  final productPrices = {
    'Apple': 1.5,
    'Banana': 0.8,
    'Orange': 1.2,
  };

  while (true) {
    print("\nChoose an action:");
    print("1. Add item to cart");
    print("2. Remove item from cart");
    print("3. Calculate total price");
    print("4. Exit");

    final choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (choice) {
      case 1:
        print("Enter product name:");
        final productName = stdin.readLineSync()!;
        print("Enter quantity:");
        final quantity = int.tryParse(stdin.readLineSync()!) ?? 0;
        shoppingCart.addItem(productName, quantity);
        break;
      case 2:
        print("Enter product name to remove:");
        final productName = stdin.readLineSync()!;
        shoppingCart.removeItem(productName);
        break;
      case 3:
        final totalPrice = shoppingCart.calculateTotalPrice(productPrices);
        print("Total Price: \$$totalPrice");
        break;
      case 4:
        print("Exiting the program. Thank you!");
        return;
      default:
        print("Invalid choice. Please choose again.");
    }

    shoppingCart.displayCartItems();
  }
}
