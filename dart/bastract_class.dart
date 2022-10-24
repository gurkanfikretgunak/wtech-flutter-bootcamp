

// içerdeki değerlerimiz herhangi bi değere eşit olmayabilir biz onları teknik olaraka bstact classlarda çağırırız.

abstract class BaseUrl{
  String? url;

  String get BaseUrl => "https://example.com/api/";
}


// pattern arhitecture araştır !!
class Auth extends BaseUrl{


  registerUser(){

  }
}