void main(List<String> args) {
  NetworkManeger n1 = NetworkManeger();
  n1.getData();
}

mixin ProjectNetwork on INetworkManeger {
  final String baseURLTMDB = 'https://api.themoviedb.org/3/movie/550?api_key=';
}

abstract class INetworkManeger {
  getData();
}

class NetworkManeger extends INetworkManeger with ProjectNetwork {
  @override
  getData() {
    print(baseURLTMDB);
    print('data fetched');
  }
}
