import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

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
    _like = prefs.getBool('ff_like') ?? _like;
    _comment = prefs.getBool('ff_comment') ?? _comment;
    _commentCounter2 = prefs.getInt('ff_commentCounter2') ?? _commentCounter2;
    _likeCounter2 = prefs.getInt('ff_likeCounter2') ?? _likeCounter2;
  }

  SharedPreferences prefs;

  bool _like = false;
  bool get like => _like;
  set like(bool _value) {
    _like = _value;
    prefs.setBool('ff_like', _value);
  }

  bool _comment = true;
  bool get comment => _comment;
  set comment(bool _value) {
    _comment = _value;
    prefs.setBool('ff_comment', _value);
  }

  int commentCounter = 10;

  int likeCounter = 89;

  String username = 'Sofia Maion';

  int _commentCounter2 = 199;
  int get commentCounter2 => _commentCounter2;
  set commentCounter2(int _value) {
    _commentCounter2 = _value;
    prefs.setInt('ff_commentCounter2', _value);
  }

  int _likeCounter2 = 2390;
  int get likeCounter2 => _likeCounter2;
  set likeCounter2(int _value) {
    _likeCounter2 = _value;
    prefs.setInt('ff_likeCounter2', _value);
  }

  bool like2 = false;
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
