enum CocaCola {
  Original(1),
  Zero(2),
  Light(3);

  final int value;
  const CocaCola(this.value);
}

void main(List<String> args) {
  print(CocaCola.values);
}
