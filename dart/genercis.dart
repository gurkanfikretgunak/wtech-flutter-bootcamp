// Generics: We can say to keep an eye on variable types
void main(List<String> args) {
  // Types are very important topic, because sometimes we need to use
  //some methods and they can return some errors because of types.
  List countries = <String>['Turkey', 'USA', 'Japan', 'Hungary'];
  // Countries variable has String value as it seems.

  // Let's want to character count from each element on list
  List dynamicList = [5, 'Turkey'];
  //print(dynamicList[0].length); // it returns error because int does not has lenght method
  print(dynamicList[1].length);
  // We are use the Generics for that reasons

  // Other example with classes
  // We have two different class
  Pdf pdf = Pdf();
  Word word = Word();

  // We sent two object with their type which is different each other to same class
  var writePdfDocument = WriteGeneric<Pdf>(pdf);
  var writeWordDocument = WriteGeneric<Word>(word);

  writePdfDocument.printDocumentType(); // Output: Pdf document
  writeWordDocument.printDocumentType(); // Output: Word document
}

abstract class Document {
  void printType();
}

class Pdf extends Document {
  @override
  void printType() {
    print("Pdf Document");
  }
}

class Word extends Document {
  @override
  void printType() {
    print("Word Document");
  }
}

class WriteGeneric<T> {
  final T obj;
  WriteGeneric(this.obj);

  void printDocumentType() {
    print(obj.runtimeType);
  }
}
