List<int> findTwoNumbersWithSum(List<int> numbers, int target) {
  Map<int, int> numMap = {}; // Map to store numbers and their indices

  for (int i = 0; i < numbers.length; i++) {
    int complement = target - numbers[i];

    if (numMap.containsKey(complement)) {
      // If complement is in the map, return the indices
      return [numMap[complement]!, i];
    } else {
      // Otherwise, add the current number and its index to the map
      numMap[numbers[i]] = i;
    }
  }

  // If no solution is found, return an empty list or handle it as needed
  return [];
}

void main() {
  // Example usage:
  List<int> numbers = [2, 7, 11, 15];
  int target = 9;
  List<int> result = findTwoNumbersWithSum(numbers, target);
  print(result);
}
