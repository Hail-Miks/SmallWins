import '/components/navbar/navbar_widget.dart';
import '/components/pomodoro_timer/pomodoro_timer_widget.dart';
import '/components/task_list/task_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PomodoroTimer component.
  late PomodoroTimerModel pomodoroTimerModel;
  // Model for TaskList component.
  late TaskListModel taskListModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    pomodoroTimerModel = createModel(context, () => PomodoroTimerModel());
    taskListModel = createModel(context, () => TaskListModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    pomodoroTimerModel.dispose();
    taskListModel.dispose();
    navbarModel.dispose();
  }
}
