import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskListRecord extends FirestoreRecord {
  TaskListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "taskName" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "pomodorosCompleted" field.
  int? _pomodorosCompleted;
  int get pomodorosCompleted => _pomodorosCompleted ?? 0;
  bool hasPomodorosCompleted() => _pomodorosCompleted != null;

  // "isCompleted" field.
  bool? _isCompleted;
  bool get isCompleted => _isCompleted ?? false;
  bool hasIsCompleted() => _isCompleted != null;

  // "dueDate" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "repetitions" field.
  int? _repetitions;
  int get repetitions => _repetitions ?? 0;
  bool hasRepetitions() => _repetitions != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "pomoMinutes" field.
  int? _pomoMinutes;
  int get pomoMinutes => _pomoMinutes ?? 0;
  bool hasPomoMinutes() => _pomoMinutes != null;

  // "restMinutes" field.
  int? _restMinutes;
  int get restMinutes => _restMinutes ?? 0;
  bool hasRestMinutes() => _restMinutes != null;

  // "breakMinutes" field.
  int? _breakMinutes;
  int get breakMinutes => _breakMinutes ?? 0;
  bool hasBreakMinutes() => _breakMinutes != null;

  // "pomoMilli" field.
  int? _pomoMilli;
  int get pomoMilli => _pomoMilli ?? 0;
  bool hasPomoMilli() => _pomoMilli != null;

  // "restMilli" field.
  int? _restMilli;
  int get restMilli => _restMilli ?? 0;
  bool hasRestMilli() => _restMilli != null;

  // "breakMilli" field.
  int? _breakMilli;
  int get breakMilli => _breakMilli ?? 0;
  bool hasBreakMilli() => _breakMilli != null;

  // "taskId" field.
  DocumentReference? _taskId;
  DocumentReference? get taskId => _taskId;
  bool hasTaskId() => _taskId != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _taskName = snapshotData['taskName'] as String?;
    _pomodorosCompleted = castToType<int>(snapshotData['pomodorosCompleted']);
    _isCompleted = snapshotData['isCompleted'] as bool?;
    _dueDate = snapshotData['dueDate'] as DateTime?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _repetitions = castToType<int>(snapshotData['repetitions']);
    _notes = snapshotData['notes'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _pomoMinutes = castToType<int>(snapshotData['pomoMinutes']);
    _restMinutes = castToType<int>(snapshotData['restMinutes']);
    _breakMinutes = castToType<int>(snapshotData['breakMinutes']);
    _pomoMilli = castToType<int>(snapshotData['pomoMilli']);
    _restMilli = castToType<int>(snapshotData['restMilli']);
    _breakMilli = castToType<int>(snapshotData['breakMilli']);
    _taskId = snapshotData['taskId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('taskList');

  static Stream<TaskListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskListRecord.fromSnapshot(s));

  static Future<TaskListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskListRecord.fromSnapshot(s));

  static TaskListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TaskListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskListRecordData({
  DocumentReference? userId,
  String? taskName,
  int? pomodorosCompleted,
  bool? isCompleted,
  DateTime? dueDate,
  DateTime? createdAt,
  int? repetitions,
  String? notes,
  DateTime? startDate,
  int? pomoMinutes,
  int? restMinutes,
  int? breakMinutes,
  int? pomoMilli,
  int? restMilli,
  int? breakMilli,
  DocumentReference? taskId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'taskName': taskName,
      'pomodorosCompleted': pomodorosCompleted,
      'isCompleted': isCompleted,
      'dueDate': dueDate,
      'createdAt': createdAt,
      'repetitions': repetitions,
      'notes': notes,
      'startDate': startDate,
      'pomoMinutes': pomoMinutes,
      'restMinutes': restMinutes,
      'breakMinutes': breakMinutes,
      'pomoMilli': pomoMilli,
      'restMilli': restMilli,
      'breakMilli': breakMilli,
      'taskId': taskId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskListRecordDocumentEquality implements Equality<TaskListRecord> {
  const TaskListRecordDocumentEquality();

  @override
  bool equals(TaskListRecord? e1, TaskListRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.taskName == e2?.taskName &&
        e1?.pomodorosCompleted == e2?.pomodorosCompleted &&
        e1?.isCompleted == e2?.isCompleted &&
        e1?.dueDate == e2?.dueDate &&
        e1?.createdAt == e2?.createdAt &&
        e1?.repetitions == e2?.repetitions &&
        e1?.notes == e2?.notes &&
        e1?.startDate == e2?.startDate &&
        e1?.pomoMinutes == e2?.pomoMinutes &&
        e1?.restMinutes == e2?.restMinutes &&
        e1?.breakMinutes == e2?.breakMinutes &&
        e1?.pomoMilli == e2?.pomoMilli &&
        e1?.restMilli == e2?.restMilli &&
        e1?.breakMilli == e2?.breakMilli &&
        e1?.taskId == e2?.taskId;
  }

  @override
  int hash(TaskListRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.taskName,
        e?.pomodorosCompleted,
        e?.isCompleted,
        e?.dueDate,
        e?.createdAt,
        e?.repetitions,
        e?.notes,
        e?.startDate,
        e?.pomoMinutes,
        e?.restMinutes,
        e?.breakMinutes,
        e?.pomoMilli,
        e?.restMilli,
        e?.breakMilli,
        e?.taskId
      ]);

  @override
  bool isValidKey(Object? o) => o is TaskListRecord;
}
