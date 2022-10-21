// Basic Function Usage (Also it is void)
func() {}

// Void Function Usage which is not send any object
void getGithubUser() {}

// An Arrow Function Usage with String which is send String object
String signInWithGithub() => 'String function value returning';

// Parameter Function Usage
signInWithEmailAndPassword(String email, String password) {
  print('Parameter:$email, $password');
}

// Named Parameter Function Usage
signInWithEmailAndPasswordNamedParameter({String? email, String? password}) {
  print('Named Parameter:$email, $password');
}

// Required Named Parameter Function Usage
signInWithEmailAndPasswordRequiredNamedParameter(
    {required String? email, required String? password}) {
  print('Required Named Parameter:$email, $password');
}

// Named and Required Named Parameter Function Usage
urlShorter(String currentUrl, {bool? withDot}) {}

// Anonymous Funtion Usage
anonymousFunctionUsage() {
  List l1 = ['apple', 'orange', 'strawberry', 'banana'];
  l1.forEach((element) => print(element)); // anonymous(unnamed) arrow func
}

void main(List<String> args) {
  const email = 'maocoban@gmail.com';
  const password = 'onlyTheDeadSee';

  signInWithEmailAndPassword(email, password);
  signInWithEmailAndPasswordNamedParameter(email: email, password: password);
  signInWithEmailAndPasswordRequiredNamedParameter(
      email: email, password: password);

  urlShorter('https://www.google.com', withDot: false);

  anonymousFunctionUsage();
}
