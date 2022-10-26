




void main(List<String> args) {


  int a = 200;


  switch (a) {
    case 200:
      print(StatusCode.ok);
      break;
    case 201: 
      print(StatusCode.created);
      break;
    case 400:
      print(StatusCode.badRequest);
      break;
    case 403:
      print(StatusCode.forbidden);
      break;
    case 404:
      print(StatusCode.notFound);
      break;    
    case 500: 
      print(StatusCode.internalServerError);
      break;  
    default:
      print("no actions available");
  }
}


enum StatusCode{
  ok,
  created,
  forbidden,
  notFound,
  badRequest,
  internalServerError

}