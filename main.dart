import "dart:io";

int calculateTotalPrice(int quantity, int unitPrice) { // Function to calculate total price
  return quantity * unitPrice;
}


void main() {

  int totalPrice, quantity; // Declare variables to store total price and quantity
  bool stillOrdering = true; // Variable to control the ordering loop

  while (stillOrdering) { // Loop to allow multiple orders
    print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");
    print("Please enter your pizza size (small, medium or large): ");
    String pizzaSize = stdin.readLineSync()?.trim().toLowerCase() ?? ""; // Read user input and convert to lowercase

    int unitPrice;

    switch (pizzaSize) {
      case "small": // Check if the pizza size is small
        unitPrice = 5;
        break;
      case "medium": // Check if the pizza size is medium
        unitPrice = 7;
        break;
      case "large": // Check if the pizza size is large
        unitPrice = 10;
        break;
      default:
        print("Invalid pizza size. Please enter 'small', 'medium', or 'large'."); // Handle invalid input
        continue; // Skip to the next iteration of the loop  
    }

    print("How many pizzas do you want of $pizzaSize?");
    quantity = int.parse(stdin.readLineSync()!); // Read the quantity of pizzas from user input

    totalPrice = calculateTotalPrice(quantity, unitPrice);
    print("Your Total Payment is: \$$totalPrice"); // Print the total payment

    print("Do you want to order another pizza? (yes/no)");
    String? continueOrdering = stdin.readLineSync()?.trim().toLowerCase();

    if (continueOrdering != "yes") { // Check if the user wants to continue ordering
      stillOrdering = false;
    }
  }
}