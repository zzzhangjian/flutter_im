class HpbRequest {
  String jsonrpc = "2.0";

  String method;

  List<dynamic> params;

  int id;

  HpbRequest(
      String jsonrpc,
      String method,
      List<dynamic> params,
      int id
  ){
    this.jsonrpc = jsonrpc;
    this.method = method;
    this.params = params;
    this.id = id;
  }




}