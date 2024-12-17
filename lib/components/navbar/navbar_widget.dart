import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  /// Navbar for SmallWins
  const NavbarWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
    this.onTapCentralButton,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;
  final Future Function()? onTapCentralButton;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget>
    with TickerProviderStateMixin {
  late NavbarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 86.0,
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                width: 360.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).navbar,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(32.0),
                    topRight: Radius.circular(32.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.selectedPageIndex != 1)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.cottage_outlined,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 1
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'Dashboard',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation1']!),
                            ),
                          if (widget.selectedPageIndex == 1)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.cottage,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 1
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'Dashboard',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation2']!),
                            ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.selectedPageIndex != 2)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.timer_outlined,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 2
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'Pomodoro',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation3']!),
                            ),
                          if (widget.selectedPageIndex == 2)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.timer,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 2
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'Pomodoro',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation4']!),
                            ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.selectedPageIndex != 3)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.date_range_outlined,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 3
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'Calendar',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation5']!),
                            ),
                          if (widget.selectedPageIndex == 3)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.date_range_rounded,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 3
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'Calendar',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation6']!),
                            ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.selectedPageIndex != 4)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.person_outline,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 4
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'User',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation7']!),
                            ),
                          if (widget.selectedPageIndex == 4)
                            Opacity(
                              opacity:
                                  widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                icon: Icon(
                                  Icons.person,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: widget.selectedPageIndex == 4
                                      ? 35.0
                                      : 25.0,
                                ),
                                onPressed: () async {
                                  context.goNamed(
                                    'User',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ).animateOnPageLoad(animationsMap[
                                  'iconButtonOnPageLoadAnimation8']!),
                            ),
                        ],
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 16.0))
                      .addToStart(const SizedBox(width: 16.0))
                      .addToEnd(const SizedBox(width: 16.0)),
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 70.0,
              height: 70.0,
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
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).navbar,
                  width: 0.0,
                ),
              ),
              child: FlutterFlowIconButton(
                borderRadius: 50.0,
                borderWidth: 0.0,
                buttonSize: 10.0,
                hoverColor: FlutterFlowTheme.of(context).secondary,
                hoverIconColor: FlutterFlowTheme.of(context).navbar,
                icon: FaIcon(
                  FontAwesomeIcons.plus,
                  color: FlutterFlowTheme.of(context).secondary,
                  size: 32.0,
                ),
                onPressed: () async {
                  await widget.onTapCentralButton?.call();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
