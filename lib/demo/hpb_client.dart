import 'package:dio/dio.dart';
import 'dart:io';

import 'dart:math';
import 'package:web3dart/web3dart.dart';


class HpbClient {
  Dio client = new Dio();

  void test(){

  }

  void getBalance(){
    client.options.contentType = ContentType("application", "json", charset: "utf-8");
  }



  static getHttp() async {
    final String url = "http://47.75.252.65:8545/";
    final String method = "post";
    final int connectTimeout = 600;
    final int sendTimeout = 600;
    final int receiveTimeout = 600;
    final ContentType contentType = ContentType("application", "json", charset: "utf-8");

    Credentials credentials = Credentials.createRandom(Random.secure());
    EthereumAddress ethereumAddress = credentials.address;
    Options options = Options(
      method: method,
      connectTimeout: connectTimeout,
      sendTimeout: sendTimeout,
      receiveTimeout: receiveTimeout,
      contentType: contentType,
    );

    try {

      Response response = await new Dio().post(
        url,
        data: {
          "jsonrpc":"2.0",
          "method":"hpb_blockNumber",
          "params":[],
          "id":1
        },
        options:options,
      );

      print(response);
    } catch (e) {
      print(e);
    }
  }

}