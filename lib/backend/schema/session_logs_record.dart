import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionLogsRecord extends FirestoreRecord {
  SessionLogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "taskId" field.
  DocumentReference? _taskId;
  DocumentReference? get taskId => _taskId;
  bool hasTaskId() => _taskId != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _taskId = snapshotData['taskId'] as DocumentReference?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _duration = castToType<int>(snapshotData['duration']);
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sessionLogs');

  static Stream<SessionLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SessionLogsRecord.fromSnapshot(s));

  static Future<SessionLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SessionLogsRecord.fromSnapshot(s));

  static SessionLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SessionLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SessionLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SessionLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SessionLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SessionLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSessionLogsRecordData({
  DocumentReference? taskId,
  DateTime? startTime,
  DateTime? endTime,
  String? status,
  int? duration,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'taskId': taskId,
      'startTime': startTime,
      'endTime': endTime,
      'status': status,
      'duration': duration,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class SessionLogsRecordDocumentEquality implements Equality<SessionLogsRecord> {
  const SessionLogsRecordDocumentEquality();

  @override
  bool equals(SessionLogsRecord? e1, SessionLogsRecord? e2) {
    return e1?.taskId == e2?.taskId &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.status == e2?.status &&
        e1?.duration == e2?.duration &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(SessionLogsRecord? e) => const ListEquality().hash(
      [e?.taskId, e?.startTime, e?.endTime, e?.status, e?.duration, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is SessionLogsRecord;
}
