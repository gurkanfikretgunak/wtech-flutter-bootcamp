int sum(List<int> numberList, int index) {
  if (index < 0) {
    return 0;
  } else {
    return numberList[index] + sum(numberList, index - 1);
  }
}

main() {
  // Driver Code
  var result = sum([1, 2, 3, 4, 5], 4);
  print(result);
}
