void main(List<String> args) {
  NetworkManeger networkManeger = NetworkManeger();
  networkManeger.getData();
}

mixin zexlyNetwork on INetworkManeger {
  final String baseURLTMDB = 'www.ahmetaydin.dev';
}

abstract class INetworkManeger {
  getData();
}

class NetworkManeger extends INetworkManeger with zexlyNetwork {
  @override
  getData() {
    print(baseURLTMDB);
    print('site data loaded');
  }
}
