import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_images.dart';
import 'package:slabs_quiz/redux/app/app_state.dart';
import 'package:slabs_quiz/router/router.gr.dart';
import 'package:slabs_quiz/ui/common/custom_scaffold.dart';
import 'package:slabs_quiz/ui/common/platform_adaptative.dart';
import 'package:slabs_quiz/ui/splash/splash_page_view_model.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SplashPageViewModel>(
      distinct: true,
      converter: (store) => SplashPageViewModel.fromStore(store),
      builder: (_, viewModel) => SplashPageContent(viewModel),
      onInit:  (store){
        Future.delayed(Duration(seconds: 3), () {
          ExtendedNavigator.rootNavigator.pushNamed(Routes.mainPage);
        });
      },
    );
  }
}

class SplashPageContent extends StatefulWidget {
  SplashPageContent(this.viewModel);

  final SplashPageViewModel viewModel;

  @override
  _SplashPageContentState createState() {
    return _SplashPageContentState();
  }
}

class _SplashPageContentState extends State<SplashPageContent> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Stack(alignment: Alignment.center, children: <Widget>[
      Center(child: Container(color: Colors.white)),
      Positioned.fill(
          child: Image.asset(AppImages.splash,
              // fit: BoxFit.fitHeight,
              width: double.infinity,
              alignment: Alignment.center)),
      getProgressIndicator(context, widget.viewModel.status),
    ]));
  }
}
