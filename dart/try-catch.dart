import 'dart:html';

Future<List<Data?>?> fetchClaims() async {
  try {
    var response = await ApiService().getMethod(path: "https://....");
  } catch (err) {
    print(err);
  }
}

class Data {}

class ApiService {
  getMethod({required String path}) {
    return HttpStatus.ok;
  }
}
