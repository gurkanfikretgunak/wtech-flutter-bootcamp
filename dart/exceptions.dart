// Throw Usage
void throwException() {
  // We can define specific exception types
  // throw FormatException('Expected at least 1 section');

  // Arbitrary throw exception
  throw 'I want to see an exception!';
}

// Create an own exception class
class MeteCobanException implements Exception {
  String cause;
  MeteCobanException(this.cause);
}

// Catch the Exception
void catchException() {
  try {
    // Operation side
    throw new MeteCobanException('This is my first custom exception');
  } on MeteCobanException {
    // Specific catch side
    print('Our Exception Side Works');
  } catch (e) {
    // For errors other than specific errors
    print('Error: $e');
  } finally {
    // Eventually it works, even if there is an error or no error
    print('Finally side worked');
  }
}

void main(List<String> args) {
  //throwException();

  catchException();
}
