import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "focusDuration" field.
  int? _focusDuration;
  int get focusDuration => _focusDuration ?? 0;
  bool hasFocusDuration() => _focusDuration != null;

  // "restDuration" field.
  int? _restDuration;
  int get restDuration => _restDuration ?? 0;
  bool hasRestDuration() => _restDuration != null;

  // "longBreakDuration" field.
  int? _longBreakDuration;
  int get longBreakDuration => _longBreakDuration ?? 0;
  bool hasLongBreakDuration() => _longBreakDuration != null;

  // "completedCycles" field.
  int? _completedCycles;
  int get completedCycles => _completedCycles ?? 0;
  bool hasCompletedCycles() => _completedCycles != null;

  // "longBreakInterval" field.
  int? _longBreakInterval;
  int get longBreakInterval => _longBreakInterval ?? 0;
  bool hasLongBreakInterval() => _longBreakInterval != null;

  // "selectedTask" field.
  DocumentReference? _selectedTask;
  DocumentReference? get selectedTask => _selectedTask;
  bool hasSelectedTask() => _selectedTask != null;

  // "timeRemaining" field.
  int? _timeRemaining;
  int get timeRemaining => _timeRemaining ?? 0;
  bool hasTimeRemaining() => _timeRemaining != null;

  // "currentTask" field.
  String? _currentTask;
  String get currentTask => _currentTask ?? '';
  bool hasCurrentTask() => _currentTask != null;

  // "lastTaskName" field.
  String? _lastTaskName;
  String get lastTaskName => _lastTaskName ?? '';
  bool hasLastTaskName() => _lastTaskName != null;

  // "lastSession" field.
  String? _lastSession;
  String get lastSession => _lastSession ?? '';
  bool hasLastSession() => _lastSession != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _focusDuration = castToType<int>(snapshotData['focusDuration']);
    _restDuration = castToType<int>(snapshotData['restDuration']);
    _longBreakDuration = castToType<int>(snapshotData['longBreakDuration']);
    _completedCycles = castToType<int>(snapshotData['completedCycles']);
    _longBreakInterval = castToType<int>(snapshotData['longBreakInterval']);
    _selectedTask = snapshotData['selectedTask'] as DocumentReference?;
    _timeRemaining = castToType<int>(snapshotData['timeRemaining']);
    _currentTask = snapshotData['currentTask'] as String?;
    _lastTaskName = snapshotData['lastTaskName'] as String?;
    _lastSession = snapshotData['lastSession'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? focusDuration,
  int? restDuration,
  int? longBreakDuration,
  int? completedCycles,
  int? longBreakInterval,
  DocumentReference? selectedTask,
  int? timeRemaining,
  String? currentTask,
  String? lastTaskName,
  String? lastSession,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'focusDuration': focusDuration,
      'restDuration': restDuration,
      'longBreakDuration': longBreakDuration,
      'completedCycles': completedCycles,
      'longBreakInterval': longBreakInterval,
      'selectedTask': selectedTask,
      'timeRemaining': timeRemaining,
      'currentTask': currentTask,
      'lastTaskName': lastTaskName,
      'lastSession': lastSession,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.focusDuration == e2?.focusDuration &&
        e1?.restDuration == e2?.restDuration &&
        e1?.longBreakDuration == e2?.longBreakDuration &&
        e1?.completedCycles == e2?.completedCycles &&
        e1?.longBreakInterval == e2?.longBreakInterval &&
        e1?.selectedTask == e2?.selectedTask &&
        e1?.timeRemaining == e2?.timeRemaining &&
        e1?.currentTask == e2?.currentTask &&
        e1?.lastTaskName == e2?.lastTaskName &&
        e1?.lastSession == e2?.lastSession;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.focusDuration,
        e?.restDuration,
        e?.longBreakDuration,
        e?.completedCycles,
        e?.longBreakInterval,
        e?.selectedTask,
        e?.timeRemaining,
        e?.currentTask,
        e?.lastTaskName,
        e?.lastSession
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
