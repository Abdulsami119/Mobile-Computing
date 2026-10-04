import 'dart:io';

void main() {
  Map<String, int> menu = {
    "Burger": 600,
    "Pizza": 1800,
    "Fries": 300,
    "Biryani": 500,
    "Shawarma": 400,
  };

  Map<String, int> order = {};

  print("Available Food:");

  int number = 1;

  menu.forEach((item, price) {
    print("$number. $item - Rs. $price");
    number++;
  });

  while (true) {
    print("\nEnter item number or 0 to finish:");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) {
      break;
    }

    if (choice < 1 || choice > menu.length) {
      print("Invalid choice.");
      continue;
    }

    String item = menu.keys.elementAt(choice - 1);

    print("Enter quantity:");
    int quantity = int.parse(stdin.readLineSync()!);

    if (quantity <= 0) {
      print("Quantity must be greater than 0.");
      continue;
    }

    // If the item is already ordered, increase its quantity
    if (order.containsKey(item)) {
      order[item] = order[item]! + quantity;
    } else {
      order[item] = quantity;
    }

    print("Item added.");
  }

  int subtotal = 0;

  print("\nOrder Receipt");

  order.forEach((item, quantity) {
    int price = menu[item]!;
    int cost = price * quantity;

    subtotal = subtotal + cost;

    print("$item  $quantity x $price = $cost");
  });

  int discount = 0;

  // 10% discount for bills above 5000
  if (subtotal > 5000) {
    discount = (subtotal * 10) ~/ 100;
  }

  int total = subtotal - discount;

  print("\nSubtotal: Rs. $subtotal");
  print("Discount: Rs. $discount");
  print("Total: Rs. $total");
}
