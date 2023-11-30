int getSmallestInteger(List<int> myList) {
  if (myList.isEmpty) {
    print ("");
  }
  return myList.reduce((currentMin, element) => element < currentMin ? element : currentMin);
}

void main() {
  List<int> myList = [4, 2, 7, 0, 9, 5];
  int result = getSmallestInteger(myList);
  print(result);
}
