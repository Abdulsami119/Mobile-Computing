import 'dart:io';

void main() {
  Map<int, String> menu = {
    1: "Burger",
    2: "Pizza",
    3: "Fries",
    4: "Sandwich",
    5: "Biryani",
  };

  Map<int, int> price = {1: 600, 2: 1800, 3: 300, 4: 500, 5: 700};

  Map<int, int> order = {};

  while (true) {
    print("\n========== MENU ==========");
    print("1. Burger   - Rs. 600");
    print("2. Pizza    - Rs. 1800");
    print("3. Fries    - Rs. 300");
    print("4. Sandwich - Rs. 500");
    print("5. Biryani  - Rs. 700");
    print("0. Finish Order");
    print("==========================");

    print("Enter item number:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) {
      break;
    }

    // Check if item exists
    if (!menu.containsKey(choice)) {
      print("Invalid choice!");
      continue;
    }

    print("Enter quantity:");
    int quantity = int.parse(stdin.readLineSync()!);

    // Check quantity
    if (quantity <= 0) {
      print("Quantity must be greater than 0!");
      continue;
    }

    // Update quantity if item already selected
    if (order.containsKey(choice)) {
      order[choice] = order[choice]! + quantity;
    } else {
      order[choice] = quantity;
    }

    print("${menu[choice]} added to order.");
  }

  // Receipt
  double subtotal = 0;

  print("\n========== ORDER RECEIPT ==========");

  order.forEach((choice, quantity) {
    int itemPrice = price[choice]!;
    int cost = itemPrice * quantity;

    subtotal += cost;

    print("${menu[choice]!.padRight(12)} $quantity x $itemPrice = $cost");
  });

  double discount = 0;

  if (subtotal > 5000) {
    discount = subtotal * 0.10;
  }

  double total = subtotal - discount;

  print("-----------------------------------");
  print("Subtotal: Rs. ${subtotal.toStringAsFixed(0)}");
  print("Discount: Rs. ${discount.toStringAsFixed(0)}");
  print("Total:    Rs. ${total.toStringAsFixed(0)}");
  print("===================================");
}
