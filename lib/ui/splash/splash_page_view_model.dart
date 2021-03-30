import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux/redux.dart';
import 'package:slabs_quiz/data/loading_status.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/router/router.gr.dart';

part 'splash_page_view_model.freezed.dart';

@freezed
abstract class SplashPageViewModel implements _$SplashPageViewModel {
  const SplashPageViewModel._();

  const factory SplashPageViewModel({
    LoadingStatus status,
    Function getInitData,
  }) = _SplashPageViewModel;

  static SplashPageViewModel fromStore(Store<AppState> store) {
    return SplashPageViewModel(
        status: LoadingStatus.success,
        getInitData: () {
          Future.delayed(Duration(seconds: 3), () {
            ExtendedNavigator.rootNavigator.pushNamed(Routes.mainPage);
          });
        });
  }
}
