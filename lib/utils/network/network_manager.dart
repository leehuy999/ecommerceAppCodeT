import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Manages the network connectivity status and provides methods to check and handle connectivity changes.
class NetworkManager extends GetxController{
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubcription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  ///Initialize the network manager and set up a stream to continually check the connection status.
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _connectivitySubcription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  ///Update the connection status based on changes in connectivity and show a relenvant popup for no internet connection.
 Future<void> _updateConnectionStatus(ConnectivityResult result) async {
  _connectionStatus.value = result;
  if(_connectionStatus.value == ConnectivityResult.none) {
    TLoaders.warnigSnackBar(title: 'No Internet Connection');
  }
 }


 ///Check the internet connection status.
///Return 'true' if connected, 'false' otherwise.
  Future<bool> isConnected() async {
  try {
    final result = await _connectivity.checkConnectivity();
    if(result == ConnectivityResult.none){
      return false;
    }
    else{
      return true;
    }
  } on PlatformException catch(_){
    return false;
  }
  }


  ///dipose or close the active connectivity stream
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _connectivitySubcription.cancel();
  }

}