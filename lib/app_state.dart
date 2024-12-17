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
      _timeRemaining = prefs.getInt('ff_timeRemaining') ?? _timeRemaining;
    });
    _safeInit(() {
      _sessionType = prefs.getString('ff_sessionType') ?? _sessionType;
    });
    _safeInit(() {
      _isTimerActive = prefs.getBool('ff_isTimerActive') ?? _isTimerActive;
    });
    _safeInit(() {
      _currentTaskId = prefs.getString('ff_currentTaskId') ?? _currentTaskId;
    });
    _safeInit(() {
      _currentTaskName =
          prefs.getString('ff_currentTaskName') ?? _currentTaskName;
    });
    _safeInit(() {
      _focusTime = prefs.getInt('ff_focusTime') ?? _focusTime;
    });
    _safeInit(() {
      _restTime = prefs.getInt('ff_restTime') ?? _restTime;
    });
    _safeInit(() {
      _breakTime = prefs.getInt('ff_breakTime') ?? _breakTime;
    });
    _safeInit(() {
      _selectDate = prefs.containsKey('ff_selectDate')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_selectDate')!)
          : _selectDate;
    });
    _safeInit(() {
      _totalDuration = prefs.getInt('ff_totalDuration') ?? _totalDuration;
    });
    _safeInit(() {
      _cyclesLeft = prefs.getInt('ff_cyclesLeft') ?? _cyclesLeft;
    });
    _safeInit(() {
      _currentTaskNote =
          prefs.getString('ff_currentTaskNote') ?? _currentTaskNote;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _timeRemaining = 0;
  int get timeRemaining => _timeRemaining;
  set timeRemaining(int value) {
    _timeRemaining = value;
    prefs.setInt('ff_timeRemaining', value);
  }

  String _sessionType = '';
  String get sessionType => _sessionType;
  set sessionType(String value) {
    _sessionType = value;
    prefs.setString('ff_sessionType', value);
  }

  bool _isTimerActive = false;
  bool get isTimerActive => _isTimerActive;
  set isTimerActive(bool value) {
    _isTimerActive = value;
    prefs.setBool('ff_isTimerActive', value);
  }

  String _currentTaskId = '';
  String get currentTaskId => _currentTaskId;
  set currentTaskId(String value) {
    _currentTaskId = value;
    prefs.setString('ff_currentTaskId', value);
  }

  String _currentTaskName = '';
  String get currentTaskName => _currentTaskName;
  set currentTaskName(String value) {
    _currentTaskName = value;
    prefs.setString('ff_currentTaskName', value);
  }

  int _focusTime = 0;
  int get focusTime => _focusTime;
  set focusTime(int value) {
    _focusTime = value;
    prefs.setInt('ff_focusTime', value);
  }

  int _restTime = 0;
  int get restTime => _restTime;
  set restTime(int value) {
    _restTime = value;
    prefs.setInt('ff_restTime', value);
  }

  int _breakTime = 0;
  int get breakTime => _breakTime;
  set breakTime(int value) {
    _breakTime = value;
    prefs.setInt('ff_breakTime', value);
  }

  DateTime? _selectDate;
  DateTime? get selectDate => _selectDate;
  set selectDate(DateTime? value) {
    _selectDate = value;
    value != null
        ? prefs.setInt('ff_selectDate', value.millisecondsSinceEpoch)
        : prefs.remove('ff_selectDate');
  }

  int _totalDuration = 0;
  int get totalDuration => _totalDuration;
  set totalDuration(int value) {
    _totalDuration = value;
    prefs.setInt('ff_totalDuration', value);
  }

  int _cyclesLeft = 0;
  int get cyclesLeft => _cyclesLeft;
  set cyclesLeft(int value) {
    _cyclesLeft = value;
    prefs.setInt('ff_cyclesLeft', value);
  }

  String _currentTaskNote = '';
  String get currentTaskNote => _currentTaskNote;
  set currentTaskNote(String value) {
    _currentTaskNote = value;
    prefs.setString('ff_currentTaskNote', value);
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
