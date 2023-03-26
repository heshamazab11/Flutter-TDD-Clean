

import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo{
  Future <bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo{

  final InternetConnectionChecker _dataConnectionChecker;
  NetworkInfoImpl(this._dataConnectionChecker);


  @override
  // TODO: implement isConnected
  Future<bool> get isConnected => _dataConnectionChecker.hasConnection;

}