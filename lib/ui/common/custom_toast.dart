import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';
import 'package:slabs_quiz/redux/app/app_actions.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';

class CustomToast extends StatefulWidget {
  CustomToast({@required this.msg, @required this.type});

  final String msg;
  final int type;
  static const int ERROR = 0;
  static const int WARNING = 2;
  static const int INFO = 3;
  static const int SUCCESS = 4;

  @override
  _CustomToastState createState() {
    return new _CustomToastState();
  }
}

class _CustomToastState extends State<CustomToast>
    with TickerProviderStateMixin {
  AnimationController _controller;
  static const int kStartValue = 3;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
        vsync: this, duration: new Duration(seconds: kStartValue));
    _controller.forward(from: 0.0);
    _controller.addStatusListener((status) {
      Store<AppState> store = StoreProvider.of<AppState>(context);
      if (status == AnimationStatus.completed)
        store.dispatch(DeleteToastAction());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var animation =
        new StepTween(begin: kStartValue, end: 0).animate(_controller);
    var result;
    switch (widget.type) {
      case CustomToast.ERROR:
        result = ErrorToast(animation: animation, msg: widget.msg);
        break;
      case CustomToast.WARNING:
        result = WarningToast(animation: animation, msg: widget.msg);
        break;

      case CustomToast.INFO:
        result = InfoToast(animation: animation, msg: widget.msg);
        break;

      case CustomToast.SUCCESS:
        result = SuccessToast(animation: animation, msg: widget.msg);
        break;
    }
    return result;
  }
}

class ErrorToast extends AnimatedWidget {
  ErrorToast({Key key, this.animation, @required this.msg})
      : super(key: key, listenable: animation);
  final String msg;
  final Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Store<AppState> store = StoreProvider.of<AppState>(context);

    return Dismissible(
        background: Container(color: Colors.transparent),
        key: ValueKey('ErrorToast'),
        onDismissed: (direction) => store.dispatch(DeleteToastAction()),
        child: Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: AppColors.redColor.withOpacity(0.95)),
            child: Stack(alignment: Alignment.topRight, children: <Widget>[
              InkWell(
                  onTap: () => store.dispatch(DeleteToastAction()),
                  child: Container(
                      height: 40.0,
                      width: 40.0,
                      child:
                          Icon(Icons.close, color: Colors.white, size: 20.0))),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  alignment: Alignment.center,
                  child: Row(children: <Widget>[
                    Icon(Icons.block, color: Colors.white),
                    SizedBox(width: 15.0),
                    Expanded(
                        child: Text(msg,
                            style: AppTextStyles.subtitleWhite2,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis)),
                  ])),
            ]),
            alignment: Alignment.center,
            width: double.infinity,
            height: 70.0));
  }
}

class WarningToast extends AnimatedWidget {
  WarningToast({Key key, this.animation, @required this.msg})
      : super(key: key, listenable: animation);
  final String msg;
  final Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Store<AppState> store = StoreProvider.of<AppState>(context);

    return Dismissible(
        background: Container(color: Colors.transparent),
        key: ValueKey('WarningToast'),
        onDismissed: (direction) => store.dispatch(DeleteToastAction()),
        child: Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: AppColors.toastInfoColor.withOpacity(0.95)),
            child: Stack(alignment: Alignment.topRight, children: <Widget>[
              InkWell(
                  onTap: () => store.dispatch(DeleteToastAction()),
                  child: Container(
                      height: 40.0,
                      width: 40.0,
                      child:
                          Icon(Icons.close, color: Colors.white, size: 20.0))),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  alignment: Alignment.center,
                  child: Row(children: <Widget>[
                    Icon(Icons.warning, color: Colors.white),
                    SizedBox(width: 15.0),
                    Expanded(
                        child: Text(msg,
                            style: AppTextStyles.subtitleWhite2,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis)),
                  ])),
            ]),
            alignment: Alignment.center,
            width: double.infinity,
            height: 70.0));
  }
}

class InfoToast extends AnimatedWidget {
  InfoToast({Key key, this.animation, @required this.msg})
      : super(key: key, listenable: animation);
  final String msg;
  final Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Store<AppState> store = StoreProvider.of<AppState>(context);

    return Dismissible(
        background: Container(color: Colors.transparent),
        key: ValueKey('InfoToast'),
        onDismissed: (direction) => store.dispatch(DeleteToastAction()),
        child: Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: AppColors.toastInfoColor.withOpacity(0.95)),
            child: Stack(alignment: Alignment.topRight, children: <Widget>[
              InkWell(
                  onTap: () => store.dispatch(DeleteToastAction()),
                  child: Container(
                      height: 40.0,
                      width: 40.0,
                      child:
                          Icon(Icons.close, color: Colors.white, size: 20.0))),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  alignment: Alignment.center,
                  child: Row(children: <Widget>[
                    Icon(Icons.info, color: Colors.white),
                    SizedBox(width: 15.0),
                    Expanded(
                        child: Text(msg,
                            style: AppTextStyles.subtitleWhite2,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis)),
                  ])),
            ]),
            alignment: Alignment.center,
            width: double.infinity,
            height: 70.0));
  }
}

class SuccessToast extends AnimatedWidget {
  SuccessToast({Key key, this.animation, @required this.msg})
      : super(key: key, listenable: animation);
  final String msg;
  final Animation<int> animation;

  @override
  Widget build(BuildContext context) {
    Store<AppState> store = StoreProvider.of<AppState>(context);

    return Dismissible(
        background: Container(color: Colors.transparent),
        key: ValueKey('SuccessToast'),
        onDismissed: (direction) => store.dispatch(DeleteToastAction()),
        child: Container(
            margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: AppColors.toastSuccessColor.withOpacity(0.95)),
            child: Stack(alignment: Alignment.topRight, children: <Widget>[
              InkWell(
                  onTap: () => store.dispatch(DeleteToastAction()),
                  child: Container(
                      height: 40.0,
                      width: 40.0,
                      child:
                          Icon(Icons.close, color: Colors.white, size: 20.0))),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  alignment: Alignment.center,
                  child: Row(children: <Widget>[
                    Icon(Icons.check_circle, color: Colors.white),
                    SizedBox(width: 15.0),
                    Expanded(
                        child: Text(msg,
                            style: AppTextStyles.subtitleWhite2,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis)),
                  ])),
            ]),
            alignment: Alignment.center,
            width: double.infinity,
            height: 70.0));
  }
}
