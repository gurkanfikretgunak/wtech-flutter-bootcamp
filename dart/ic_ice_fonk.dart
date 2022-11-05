num cubes(num x) {
  return x * x * x;
}

num cubesSum(num x, num y, num z) {
  return cubes(x) + cubes(y) + cubes(z);
}

main() {
  var result = cubesSum(1, 2, 3);
  print(result);
}
