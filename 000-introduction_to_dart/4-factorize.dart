List<int> factorizeToPrimeNumbers(int number) {
  List<int> primeFactors = [];
  
  for (int i = 2; i <= number; i++) {
    while (number % i == 0) {
      primeFactors.add(i);
      number ~/= i;
    }
  }

  return primeFactors;
}

void main() {
  int inputNumber = 60;
  List<int> result = factorizeToPrimeNumbers(inputNumber);

  print("Prime factors of $inputNumber are: $result");
}
