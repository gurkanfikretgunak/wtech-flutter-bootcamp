// If Else Conditions
void conditionUsage() {
  if (7 > 6) {
    print('Normal if Usage');
  } else {
    print('False Part');
  }

  (7 > 6) ? print('Ternary Condition Usage') : print('False Part');
}

// For Loop
void forLoopUsage() {
  String message = 'Wtech is the best';
  for (var i = 0; i < message.length; i++) {
    print(message[i]);
  }

  List l1 = ['just', 'try'];
  for (String element in l1) {
    print(element);
  }
}

// While and Do While Loops
void whileLoopUsage() {
  int num = 3;
  while (num != 0) {
    print('$num');
    num--;
  }

  do {
    print('$num');
    num++;
  } while (num < 3);
}

// Break and Continue Usage
void breakAndContinueUsage() {
  List l1 = ['just', 'try'];
  for (String element in l1) {
    if (element == 'try') {
      print('$element finded');
      break;
    } else
      continue;
  }
}

// Switch Case Usage
void switchCaseUsage() {
  String conditionStr = 'apple';
  switch (conditionStr) {
    case 'apple':
      print('$conditionStr finded');
      break;
    case 'other parts':
      print('$conditionStr finded');
      break;
    default:
  }
}

// Assert Usage
void assertUsage() {
  String urlString = 'https://cobanmete.com';
  print('Assert control began');
  assert(urlString.startsWith('https'),
      'URL ($urlString) should start with "https".');
  print('Assert control continue');
  assert(urlString.startsWith('Mao'),
      'URL ($urlString) should start with "https".');
  print('Stopped continuing');
}

void main(List<String> args) {
  conditionUsage();
  forLoopUsage();
  whileLoopUsage();
  breakAndContinueUsage();
  switchCaseUsage();
  assertUsage();
}
