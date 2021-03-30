import 'package:flutter/material.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';

class ErrorView extends InfoMessageView {
  static const Key tryAgainButtonKey = Key('tryAgainButton');

  const ErrorView({
    String title,
    Widget image,
    String description,
    @required VoidCallback onRetry,
  }) : super(
            actionButtonKey: tryAgainButtonKey,
            title: title ?? 'Oops!',
            image: image,
            description:
                description ?? 'There was an error while\nloading data.',
            onActionButtonTapped: onRetry);
}

class InfoMessageView extends StatelessWidget {
  const InfoMessageView({
    Key key,
    @required this.title,
    @required this.description,
    this.image,
    this.actionButtonKey,
    this.onActionButtonTapped,
  }) : super(key: key);

  final Key actionButtonKey;
  final String title;
  final Widget image;
  final String description;
  final VoidCallback onActionButtonTapped;

  Widget _buildActionButton(BuildContext context) {
    if (onActionButtonTapped == null) {
      return null;
    }

    return Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: FlatButton(
            key: actionButtonKey,
            onPressed: onActionButtonTapped,
            child: Text('Intenta de nuevo',
                style: AppTextStyles.normal4
                    .copyWith(color: AppColors.darkColor))));
  }

  void addIfNonNull(Widget widget, List<Widget> children) {
    if (widget != null) {
      children.add(widget);
    }
  }

  @override
  Widget build(BuildContext context) {
    var content = <Widget>[
      image != null
          ? image
          : Icon(Icons.info_outline, color: AppColors.darkColor, size: 52.0),
      const SizedBox(height: 16.0),
      Text(title ?? '',
          textAlign: TextAlign.center,
          style: AppTextStyles.title4.copyWith(color: AppColors.darkColor)),
      const SizedBox(height: 8.0),
      Text(description ?? '',
          style: AppTextStyles.subtitle4.copyWith(color: AppColors.darkColor),
          textAlign: TextAlign.center),
    ];

    addIfNonNull(_buildActionButton(context), content);

    return SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 32.0),
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: content))));
  }
}
