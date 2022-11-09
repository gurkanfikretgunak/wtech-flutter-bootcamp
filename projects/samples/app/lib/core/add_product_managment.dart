class AddProduct {
  List<String> addNames = [];
  List<String> addImages = [];
  List<String> addPrices = [];

  void addProductCart(String name, String price, String image) {
    addNames.add(name);
    addPrices.add(price);
    addImages.add(image);
  }
}
