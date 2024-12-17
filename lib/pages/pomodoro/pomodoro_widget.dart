import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'pomodoro_model.dart';
export 'pomodoro_model.dart';

class PomodoroWidget extends StatefulWidget {
  const PomodoroWidget({super.key});

  @override
  State<PomodoroWidget> createState() => _PomodoroWidgetState();
}

class _PomodoroWidgetState extends State<PomodoroWidget> {
  late PomodoroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PomodoroModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).navbar,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(55.0),
                          bottomRight: Radius.circular(55.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 24.0),
                          child: Text(
                            'Pomodoro',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).lightPrimary,
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 600.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).navbar,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 12.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                5.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      _model.timerController.timer
                                          .setPresetTime(
                                        mSec: FFAppState().focusTime,
                                        add: false,
                                      );
                                      _model.timerController.onResetTimer();

                                      FFAppState().isTimerActive = false;
                                      FFAppState().sessionType = 'Focus';
                                      FFAppState().totalDuration =
                                          _model.selectedTaskList!.pomoMilli;
                                      safeSetState(() {});
                                    },
                                    text: 'Focus',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FFAppState().sessionType == 'Focus'
                                          ? FlutterFlowTheme.of(context).darkBG
                                          : FlutterFlowTheme.of(context)
                                              .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      _model.timerController.timer
                                          .setPresetTime(
                                        mSec: FFAppState().restTime,
                                        add: false,
                                      );
                                      _model.timerController.onResetTimer();

                                      FFAppState().isTimerActive = false;
                                      FFAppState().sessionType = 'Rest';
                                      FFAppState().totalDuration =
                                          _model.selectedTaskList!.restMilli;
                                      safeSetState(() {});
                                    },
                                    text: 'Rest',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FFAppState().sessionType == 'Rest'
                                          ? FlutterFlowTheme.of(context).darkBG
                                          : FlutterFlowTheme.of(context)
                                              .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      _model.timerController.timer
                                          .setPresetTime(
                                        mSec: FFAppState().breakTime,
                                        add: false,
                                      );
                                      _model.timerController.onResetTimer();

                                      FFAppState().isTimerActive = false;
                                      FFAppState().sessionType = 'Break';
                                      FFAppState().totalDuration =
                                          _model.selectedTaskList!.breakMilli;
                                      safeSetState(() {});
                                    },
                                    text: 'Break',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FFAppState().sessionType == 'Break'
                                          ? FlutterFlowTheme.of(context).darkBG
                                          : FlutterFlowTheme.of(context)
                                              .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 8.0)),
                              ),
                              StreamBuilder<List<TaskListRecord>>(
                                stream: queryTaskListRecord(
                                  queryBuilder: (taskListRecord) =>
                                      taskListRecord
                                          .where(
                                            'userId',
                                            isEqualTo: currentUserReference,
                                          )
                                          .where(
                                            'isCompleted',
                                            isEqualTo: false,
                                          ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<TaskListRecord>
                                      dropDownTaskListRecordList =
                                      snapshot.data!;

                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(null),
                                    options: dropDownTaskListRecordList
                                        .map((e) => e.taskName)
                                        .toList(),
                                    onChanged: (val) async {
                                      safeSetState(
                                          () => _model.dropDownValue = val);
                                      _model.selectedTaskList =
                                          await queryTaskListRecordOnce(
                                        queryBuilder: (taskListRecord) =>
                                            taskListRecord
                                                .where(
                                                  'taskName',
                                                  isEqualTo:
                                                      _model.dropDownValue,
                                                )
                                                .where(
                                                  'userId',
                                                  isEqualTo:
                                                      currentUserReference,
                                                ),
                                        singleRecord: true,
                                      ).then((s) => s.firstOrNull);
                                      FFAppState().currentTaskId =
                                          _model.selectedTaskList!.reference.id;
                                      FFAppState().currentTaskName =
                                          _model.selectedTaskList!.taskName;
                                      FFAppState().focusTime =
                                          _model.selectedTaskList!.pomoMilli;
                                      FFAppState().restTime =
                                          _model.selectedTaskList!.restMilli;
                                      FFAppState().breakTime =
                                          _model.selectedTaskList!.breakMilli;
                                      FFAppState().sessionType = 'Focus';
                                      FFAppState().totalDuration =
                                          _model.selectedTaskList!.pomoMilli;
                                      FFAppState().cyclesLeft = _model
                                          .selectedTaskList!.pomodorosCompleted;
                                      FFAppState().currentTaskNote =
                                          _model.selectedTaskList!.notes;
                                      safeSetState(() {});
                                      _model.timerController.timer
                                          .setPresetTime(
                                        mSec: FFAppState().focusTime,
                                        add: false,
                                      );
                                      _model.timerController.onResetTimer();

                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        currentTask: FFAppState().currentTaskId,
                                        lastTaskName:
                                            FFAppState().currentTaskName,
                                        lastSession: FFAppState().sessionType,
                                      ));

                                      safeSetState(() {});
                                    },
                                    width: 200.0,
                                    height: 30.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Select...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 50.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Task Selected:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  SelectionArea(
                                      child: Text(
                                    FFAppState().currentTaskName,
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          letterSpacing: 0.0,
                                        ),
                                  )),
                                ],
                              ),
                              Expanded(
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Repetitions: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .cyclesLeft
                                                    .toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 64.0, 0.0, 64.0),
                                          child: FlutterFlowTimer(
                                            initialTime:
                                                FFAppState().timeRemaining,
                                            getDisplayTime: (value) =>
                                                StopWatchTimer.getDisplayTime(
                                              value,
                                              hours: false,
                                              milliSecond: false,
                                            ),
                                            controller: _model.timerController,
                                            updateStateInterval:
                                                const Duration(milliseconds: 1000),
                                            onChanged: (value, displayTime,
                                                shouldUpdate) {
                                              _model.timerMilliseconds = value;
                                              _model.timerValue = displayTime;
                                              if (shouldUpdate) {
                                                safeSetState(() {});
                                              }
                                            },
                                            onEnded: () async {
                                              _model.soundPlayer ??=
                                                  AudioPlayer();
                                              if (_model.soundPlayer!.playing) {
                                                await _model.soundPlayer!
                                                    .stop();
                                              }
                                              _model.soundPlayer!
                                                  .setVolume(1.0);
                                              _model.soundPlayer!
                                                  .setAsset(
                                                      'assets/audios/Alarm.mp3')
                                                  .then((_) => _model
                                                      .soundPlayer!
                                                      .play());
                                            },
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Lora',
                                                  fontSize: 72.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 0.0),
                                          child: SelectionArea(
                                              child: Text(
                                            FFAppState().currentTaskNote,
                                            maxLines: 3,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Ubuntu',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (FFAppState().isTimerActive == false)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        buttonSize: 60.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        icon: Icon(
                                          Icons.play_arrow_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          _model.timerController.onStartTimer();
                                          FFAppState().isTimerActive = true;
                                          safeSetState(() {});
                                        },
                                      ),
                                    if (FFAppState().isTimerActive == true)
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        buttonSize: 60.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        icon: Icon(
                                          Icons.pause_rounded,
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          _model.soundPlayer?.stop();
                                          if ((_model.timerMilliseconds == 0) &&
                                              (FFAppState().sessionType ==
                                                  'Focus')) {
                                            _model.timerController.timer
                                                .setPresetTime(
                                              mSec: FFAppState().restTime,
                                              add: false,
                                            );
                                            _model.timerController
                                                .onResetTimer();

                                            FFAppState().isTimerActive = false;
                                            FFAppState().sessionType = 'Rest';
                                            FFAppState().totalDuration = _model
                                                .selectedTaskList!.restMilli;
                                            safeSetState(() {});
                                          } else if ((_model
                                                      .timerMilliseconds ==
                                                  0) &&
                                              (FFAppState().sessionType ==
                                                  'Rest')) {
                                            if (FFAppState().cyclesLeft == 0) {
                                              _model.timerController.timer
                                                  .setPresetTime(
                                                mSec: FFAppState().breakTime,
                                                add: false,
                                              );
                                              _model.timerController
                                                  .onResetTimer();

                                              FFAppState().isTimerActive =
                                                  false;
                                              FFAppState().sessionType =
                                                  'Break';
                                              FFAppState().totalDuration =
                                                  _model.selectedTaskList!
                                                      .breakMilli;
                                              safeSetState(() {});
                                            } else {
                                              _model.timerController.timer
                                                  .setPresetTime(
                                                mSec: FFAppState().focusTime,
                                                add: false,
                                              );
                                              _model.timerController
                                                  .onResetTimer();

                                              FFAppState().isTimerActive =
                                                  false;
                                              FFAppState().sessionType =
                                                  'Focus';
                                              FFAppState().totalDuration =
                                                  _model.selectedTaskList!
                                                      .pomoMilli;
                                              FFAppState().cyclesLeft =
                                                  FFAppState().cyclesLeft + -1;
                                              safeSetState(() {});

                                              await _model
                                                  .selectedTaskList!.reference
                                                  .update(
                                                      createTaskListRecordData(
                                                pomodorosCompleted: _model
                                                        .selectedTaskList!
                                                        .pomodorosCompleted -
                                                    1,
                                              ));
                                            }
                                          } else if ((_model
                                                      .timerMilliseconds ==
                                                  0) &&
                                              (FFAppState().sessionType ==
                                                  'Break')) {
                                            await _model
                                                .selectedTaskList!.reference
                                                .update(
                                                    createTaskListRecordData(
                                              isCompleted: true,
                                            ));
                                            FFAppState().timeRemaining = 0;
                                            FFAppState().sessionType = '';
                                            FFAppState().isTimerActive = false;
                                            FFAppState().currentTaskId = '';
                                            FFAppState().currentTaskName = '';
                                            FFAppState().focusTime = 0;
                                            FFAppState().restTime = 0;
                                            FFAppState().breakTime = 0;
                                            FFAppState().selectDate = null;
                                            FFAppState().totalDuration = 0;
                                            FFAppState().cyclesLeft = 0;
                                            FFAppState().currentTaskNote = '';
                                            safeSetState(() {});

                                            await currentUserReference!
                                                .update(createUsersRecordData(
                                              timeRemaining:
                                                  FFAppState().timeRemaining,
                                            ));
                                          } else {
                                            _model.timerController
                                                .onStopTimer();
                                            FFAppState().isTimerActive = false;
                                            FFAppState().timeRemaining =
                                                _model.timerMilliseconds;
                                            safeSetState(() {});

                                            await currentUserReference!
                                                .update(createUsersRecordData(
                                              timeRemaining:
                                                  FFAppState().timeRemaining,
                                              lastTaskName:
                                                  FFAppState().currentTaskName,
                                              lastSession:
                                                  FFAppState().sessionType,
                                            ));
                                          }
                                        },
                                      ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 18.0)),
                ),
                if (!(isWeb
                    ? MediaQuery.viewInsetsOf(context).bottom > 0
                    : _isKeyboardVisible))
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.navbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavbarWidget(
                        selectedPageIndex: 2,
                        hidden: false,
                        onTapCentralButton: () async {
                          context.goNamed(
                            'AddTask',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
