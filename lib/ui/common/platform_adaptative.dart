// Copyright 2017, the Flutter project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/ui/common/empty.dart';

/// App bar that uses iOS styling on iOS
class PlatformAdaptiveAppBar extends AppBar {
  PlatformAdaptiveAppBar(
      {Key key,
      TargetPlatform platform,
      List<Widget> actions,
      Widget title,
      Widget body,
      Widget bottom,
      Color backgroundColor,
      bool centerTitle,
      IconThemeData iconTheme,
      TextTheme textTheme})
      : super(
            key: key,
            elevation: platform == TargetPlatform.iOS ? 0.0 : 4.0,
            title: title,
            actions: actions,
            bottom: bottom,
            backgroundColor: backgroundColor,
            centerTitle: centerTitle ?? true,
            iconTheme: iconTheme,
            textTheme: textTheme);
}

/// Button that is Material on Android and Cupertino on iOS
/// On Android an icon button; on iOS, text is used
class PlatformAdaptiveButton extends StatelessWidget {
  PlatformAdaptiveButton({Key key, this.child, this.icon, this.onPressed})
      : super(key: key);
  final Widget child;
  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return CupertinoButton(child: child, onPressed: onPressed);
    } else {
      return IconButton(icon: icon, onPressed: onPressed);
    }
  }
}

// Bottom navigation bar that is Material on Android and Cupertino on iOS.
class PlatformAdaptiveBottomBar extends StatelessWidget {
  PlatformAdaptiveBottomBar(
      {Key key, this.activeColor, this.currentIndex, this.onTap, this.items})
      : super(key: key);
  final Color activeColor;
  final int currentIndex;
  final Function onTap;
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: onTap,
            selectedFontSize: 12,
            unselectedFontSize: 10,
            items: items));
  }
}

class PlatformAdaptiveContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;

  PlatformAdaptiveContainer({Key key, this.child, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        margin: margin,
        decoration: Theme.of(context).platform == TargetPlatform.iOS
            ? BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey[200])))
            : null);
  }
}

class PlatformAdaptivePoweredBy extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;

  PlatformAdaptivePoweredBy({Key key, this.child, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        margin: margin,
        decoration: Theme.of(context).platform == TargetPlatform.iOS
            ? BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey[200])))
            : null);
  }
}

class PlatformChooser extends StatelessWidget {
  PlatformChooser({Key key, this.iosChild, this.defaultChild});

  final Widget iosChild;
  final Widget defaultChild;

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) return iosChild;
    return defaultChild;
  }
}

class PlatformAdaptiveProgressIndicator extends StatelessWidget {
  const PlatformAdaptiveProgressIndicator(this.status, {Key key})
      : super(key: key);

  final LoadingStatus status;

  @override
  Widget build(BuildContext context) {
    if (status == LoadingStatus.loading)
      return Platform.isIOS
          ? const CupertinoActivityIndicator(radius: 15.0)
          : const CircularProgressIndicator();
    else
      return Empty();
  }
}

Widget getProgressIndicator(BuildContext context, LoadingStatus status) {
  if (status == LoadingStatus.loading)
    return Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
        child: PlatformAdaptiveProgressIndicator(status));
  else
    return Empty();
}
