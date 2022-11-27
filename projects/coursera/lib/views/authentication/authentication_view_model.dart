class AuthenticationViewModel {
  String? nameValidator(String? value) {
    if (value!.length < 2 ||
        value.contains(RegExp(r'[0-9]')) ||
        value.isEmpty) {
      return 'Please enter a valid name!';
    }
    return null;
  }

  String? emailValidator(value) {
    if (value!.length < 2 ||
        !value.contains(RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')) ||
        value.isEmpty) {
      return 'Please enter a valid email!';
    }
    return null;
  }

  String? passwordValidator(value) {
    if (value!.length < 6 || value.isEmpty) {
      return 'Password must be at least 6 characters!';
    }
    return null;
  }
}
