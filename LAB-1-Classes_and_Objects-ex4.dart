class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  var myProduct = Product(name: "Socks", price: 30, quantity: 9);

  double totalCost = myProduct.calculateTotalCost();
  print("Product: ${myProduct.name}");
  print("Price per unit: \$${myProduct.price}");
  print("Quantity: ${myProduct.quantity}");
  print("Total cost: \$${totalCost.toStringAsFixed(2)}");
}
