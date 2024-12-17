import '/flutter_flow/flutter_flow_util.dart';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:flutter/material.dart';

class AddTaskModel extends FlutterFlowModel<AddTaskWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // Stores action output result for [Custom Action - minuteToMillisecond] action in CountController widget.
  int? focusMS;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // Stores action output result for [Custom Action - minuteToMillisecond] action in CountController widget.
  int? restMS;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // Stores action output result for [Custom Action - minuteToMillisecond] action in CountController widget.
  int? breakMS;
  // State field(s) for CountController widget.
  int? countControllerValue4;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
