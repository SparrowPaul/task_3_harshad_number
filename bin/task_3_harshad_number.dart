// Task 3: Identifying Harshad Numbers
import 'dart:io';


void main() {
  try {
    // Prompt the user to enter an integer
    stdout.write("Enter an integer: ");
    int userInput = int.parse(stdin.readLineSync()!);

    // Check if the user's input is a Harshad number and print the result
    if (isHarshadNumber(userInput)) {
      print("$userInput is determined to be a Harshad number.");
    } else {
      print("$userInput is not a Harshad number.");
    }
  } on FormatException {
    print("Invalid input. Please enter a valid integer.");
  }
}

// Function to check if a number is a Harshad number
bool isHarshadNumber(int num) {
  if (num <= 0) {
    return false;
  }

  // Calculate the sum of the digits
  int digitSum = 0;
  int remainingNumber = num;
  while (remainingNumber > 0) {
    digitSum += remainingNumber % 10;
    remainingNumber ~/= 10;
  }

  // Check if the number is divisible by the sum of its digits
  return num % digitSum == 0;
}
