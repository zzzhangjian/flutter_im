import 'package:flutter/material.dart';
import 'package:ethereum/ethereum_server_client.dart';
import 'dart:math';
import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

import 'package:flutter_im/demo/hpb_client.dart';

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App>{

  final String _url = "18.204.75.158";

  String balance = "0.00000000";
  String version = "0.00000000";
  String address = "获取地址";
  String privateKey = "私钥地址";

  void _getBalance(){
    setState(() {
        Client httpClient = new Client();
        Web3Client client = new Web3Client(_url, httpClient);

        Credentials credentials = Credentials.createRandom(Random.secure());
        EthereumAddress ethereumAddress = credentials.address;
        address = ethereumAddress.toString();
        print(address);
        privateKey = credentials.privateKey.toString();
        print(privateKey);
        HpbClient.getHttp();
    });
  }

  Future<String> _protocolVersion() async {
    final EthereumServerClient client =
    EthereumServerClient.withConnectionParameters(_url);

    client.printError = true;

    version = await client.eth.protocolVersion();
    return version;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: _getBalance,
        child: Center(
          child: Column(
            children: <Widget>[
              Text("地址:$address"),
              Text("私钥:$privateKey"),
            ],
          ),
        ),
      ),
    );
  }
}