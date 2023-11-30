String intToRoman(int number) {
  if (number < 1 || number > 3999) {
    return "Invalid input";
  }

  List<String> romanNumerals = [
    "I",
    "IV",
    "V",
    "IX",
    "X",
    "XL",
    "L",
    "XC",
    "C",
    "CD",
    "D",
    "CM",
    "M"
  ];

  List<int> numeralValues = [
    1,
    4,
    5,
    9,
    10,
    40,
    50,
    90,
    100,
    400,
    500,
    900,
    1000
  ];

  String result = "";

  for (int i = numeralValues.length - 1; i >= 0; i--) {
    while (number >= numeralValues[i]) {
      result += romanNumerals[i];
      number -= numeralValues[i];
    }
  }

  return result;
}

void main() {
  // Example usage:
  int number = 27;
  String result = intToRoman(number);
  print("Roman numeral representation of $number is: $result");
}
