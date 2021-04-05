import 'package:flutter/services.dart';

enum Environment { DEV, PRODUCT }

class Config {
  static Map<String, dynamic> _config = _Config.debugConstants;

  static Environment _env = Environment.DEV;

  static Future initializeApp() async {
    final flavor = await MethodChannel('flavor').invokeMethod<String>('getFlavor').catchError((error) {
      print('FAILED TO LOAD FLAVOR: $error');
    });
    print('STARTED WITH FLAVOR: $flavor');
    if (flavor == 'product') {
      Config._setEnvironment(Environment.PRODUCT);
    } else {
      Config._setEnvironment(Environment.DEV);
    }
  }

  static void _setEnvironment(Environment env) {
    _env = env;
    switch (env) {
      case Environment.DEV:
        _config = _Config.debugConstants;
        break;
      case Environment.PRODUCT:
        _config = _Config.prodConstants;
        break;
      default:
        _config = _Config.debugConstants;
    }
  }

  static Environment get getEnvironment => _env;

  static get firebaseSenderID => _config[_Config.firebaseSenderID];

  static get firebaseServerKey => _config[_Config.firebaseServerKey];
}

class _Config {
  static const String firebaseSenderID = "FIREBASE_SENDER_ID";
  static const String firebaseServerKey = "FIREBASE_SERVER_KEY";

  static Map<String, dynamic> debugConstants = {
    firebaseSenderID: "285095789960",
    firebaseServerKey:
        "AAAAQmEIhYg:APA91bEnhmjYpk1j-Eyq2VnjGEFC2snK_W1W6LzIftgSbaKPsaTSY7HNHE7kv77gJgX8r5SzFTDSXYyEWH7Ghvwg9s7kI5nSrWLj3tB2I7YawyYwruQgNREycwUiwJgTu9xZRHmbmPRg",
  };

  static Map<String, dynamic> prodConstants = {
    firebaseSenderID: "",
    firebaseServerKey: "",
  };
}
