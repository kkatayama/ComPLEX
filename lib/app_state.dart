import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _AccessToken = prefs.getString('ff_AccessToken') ?? _AccessToken;
    });
    _safeInit(() {
      _UserID = prefs.getInt('ff_UserID') ?? _UserID;
    });
    _safeInit(() {
      _Name = prefs.getString('ff_Name') ?? _Name;
    });
    _safeInit(() {
      _Email = prefs.getString('ff_Email') ?? _Email;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _AccessToken = '';
  String get AccessToken => _AccessToken;
  set AccessToken(String value) {
    _AccessToken = value;
    prefs.setString('ff_AccessToken', value);
  }

  int _UserID = 0;
  int get UserID => _UserID;
  set UserID(int value) {
    _UserID = value;
    prefs.setInt('ff_UserID', value);
  }

  String _Name = '';
  String get Name => _Name;
  set Name(String value) {
    _Name = value;
    prefs.setString('ff_Name', value);
  }

  String _Email = '';
  String get Email => _Email;
  set Email(String value) {
    _Email = value;
    prefs.setString('ff_Email', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
