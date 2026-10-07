import "dart:io";

num calculateTotalPrice(num quantity, num price) { // Function to calculate total price
  return quantity * price;
}


void main() {

  num? totalPrice, quantity; // Declare variables to store total price and quantity

  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");
  print("Please enter your pizza size (small, medium or large): ");
  String pizza_size = stdin.readLineSync()?.trim().toLowerCase() ?? ""; // Read user input and convert to lowercase

  switch (pizza_size) {
    case "small": // Check if the pizza size is small
      print("How many pizzas do you want of $pizza_size?");
      quantity = num.parse(stdin.readLineSync()!);
      totalPrice = calculateTotalPrice(quantity, 5);
    case "medium": // Check if the pizza size is medium
      print("How many pizzas do you want of $pizza_size?");
      quantity = num.parse(stdin.readLineSync()!);
      totalPrice = calculateTotalPrice(quantity, 7);
    case "large": // Check if the pizza size is large
      print("How many pizzas do you want of $pizza_size?");
      quantity = num.parse(stdin.readLineSync()!);
      totalPrice = calculateTotalPrice(quantity, 10);
    default:
      print("Invalid pizza size. Please enter 'small', 'medium', or 'large'."); // Handle invalid input
  }
  print("Your Total Payment is: \$$totalPrice"); // Print the total payment
}