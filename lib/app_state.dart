import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _notificationEnabled =
        prefs.getBool('ff_notificationEnabled') ?? _notificationEnabled;
    _sendNotify = prefs.getBool('ff_sendNotify') ?? _sendNotify;
    _receiveNotify = prefs.getBool('ff_receiveNotify') ?? _receiveNotify;
    _exchangeNotify = prefs.getBool('ff_exchangeNotify') ?? _exchangeNotify;
    _promoNotify = prefs.getBool('ff_promoNotify') ?? _promoNotify;
    _transactionCount =
        prefs.getInt('ff_transactionCount') ?? _transactionCount;
    _addressesBookCount =
        prefs.getInt('ff_addressesBookCount') ?? _addressesBookCount;
    _bitBalance = prefs.getDouble('ff_bitBalance') ?? _bitBalance;
    _bitUSD = prefs.getDouble('ff_bitUSD') ?? _bitUSD;
    _bitPrice = prefs.getDouble('ff_bitPrice') ?? _bitPrice;
    _emailNotifications =
        prefs.getBool('ff_emailNotifications') ?? _emailNotifications;
    _authEnabled = prefs.getBool('ff_authEnabled') ?? _authEnabled;
  }

  SharedPreferences prefs;

  bool _notificationEnabled = true;
  bool get notificationEnabled => _notificationEnabled;
  set notificationEnabled(bool _value) {
    _notificationEnabled = _value;
    prefs.setBool('ff_notificationEnabled', _value);
  }

  bool _sendNotify = false;
  bool get sendNotify => _sendNotify;
  set sendNotify(bool _value) {
    _sendNotify = _value;
    prefs.setBool('ff_sendNotify', _value);
  }

  bool _receiveNotify = false;
  bool get receiveNotify => _receiveNotify;
  set receiveNotify(bool _value) {
    _receiveNotify = _value;
    prefs.setBool('ff_receiveNotify', _value);
  }

  bool _exchangeNotify = false;
  bool get exchangeNotify => _exchangeNotify;
  set exchangeNotify(bool _value) {
    _exchangeNotify = _value;
    prefs.setBool('ff_exchangeNotify', _value);
  }

  bool _promoNotify = false;
  bool get promoNotify => _promoNotify;
  set promoNotify(bool _value) {
    _promoNotify = _value;
    prefs.setBool('ff_promoNotify', _value);
  }

  int _transactionCount = 0;
  int get transactionCount => _transactionCount;
  set transactionCount(int _value) {
    _transactionCount = _value;
    prefs.setInt('ff_transactionCount', _value);
  }

  int _addressesBookCount = 0;
  int get addressesBookCount => _addressesBookCount;
  set addressesBookCount(int _value) {
    _addressesBookCount = _value;
    prefs.setInt('ff_addressesBookCount', _value);
  }

  double _bitBalance = 0.0;
  double get bitBalance => _bitBalance;
  set bitBalance(double _value) {
    _bitBalance = _value;
    prefs.setDouble('ff_bitBalance', _value);
  }

  double _bitUSD = 0.0;
  double get bitUSD => _bitUSD;
  set bitUSD(double _value) {
    _bitUSD = _value;
    prefs.setDouble('ff_bitUSD', _value);
  }

  double _bitPrice = 0.0;
  double get bitPrice => _bitPrice;
  set bitPrice(double _value) {
    _bitPrice = _value;
    prefs.setDouble('ff_bitPrice', _value);
  }

  double currentMinAmount = 0.0;

  double currentExchangeRate = 0.0;

  String currentExchangeProccess = '';

  bool _emailNotifications = false;
  bool get emailNotifications => _emailNotifications;
  set emailNotifications(bool _value) {
    _emailNotifications = _value;
    prefs.setBool('ff_emailNotifications', _value);
  }

  double emptyAmount = 1;

  bool _authEnabled = false;
  bool get authEnabled => _authEnabled;
  set authEnabled(bool _value) {
    _authEnabled = _value;
    prefs.setBool('ff_authEnabled', _value);
  }

  bool copied = false;

  List<dynamic> verifySecretPhrase = [];

  double changeAmount = 0.0;

  double networkFee = 0.0;

  String sendAmount = '';
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
