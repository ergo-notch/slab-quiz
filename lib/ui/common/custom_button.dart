import 'package:flutter/material.dart';
import 'package:slabs_quiz/app/app_colors.dart';
import 'package:slabs_quiz/app/app_settings.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';

class PrimaryButton extends StatefulWidget {
  PrimaryButton({Key key, this.text, this.action, this.enable = true})
      : super(key: key);
  final String text;
  final VoidCallback action;
  final bool enable;

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool onHighlight = false;
  bool _isButtonTapped = false;

  void restartButton() async {
    await Future.delayed(const Duration(milliseconds: 200), () {
      if (mounted)
        setState(() {
          _isButtonTapped = !_isButtonTapped;
        });
    });
  }

  _onTapped() {
    restartButton();
    setState(() {
      if (widget.enable) widget.action();
      _isButtonTapped = !_isButtonTapped;
    }); //tapping the button once, disables the button from being tapped again
  }

  @override
  Widget build(BuildContext context) {
    var radioCorners = AppSettings.primaryButtonRadioCorners;
    var color = AppColors.primaryButtonColor;
    var filled = AppSettings.primaryButtonFilled;

    return filled
        ? Container(
        width: double.infinity,
        height: 43.0,
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: RaisedButton(
            splashColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radioCorners)),
            onPressed:
            (_isButtonTapped || !widget.enable) ? null : _onTapped,
            disabledColor: AppColors.darkColor,
            color: color,
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style:
                AppTextStyles.subtitle4.copyWith(color: Colors.white))))
        : Container(
        width: double.infinity,
        height: 43.0,
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: RaisedButton(
            splashColor: color,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: color),
                borderRadius: BorderRadius.circular(radioCorners)),
            onPressed:
            (_isButtonTapped || !widget.enable) ? null : _onTapped,
            disabledColor: Colors.white,
            onHighlightChanged: (value) => setState(() {
              onHighlight = value;
            }),
            color: Colors.white,
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style: AppTextStyles.subtitle4
                    .copyWith(color: onHighlight ? Colors.white : color))));
  }
}

class SecondaryButton extends StatefulWidget {
  SecondaryButton({Key key, this.text, this.action, this.enable = true})
      : super(key: key);
  final String text;
  final VoidCallback action;
  final bool enable;

  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  bool onHighlight = false;
  bool _isButtonTapped = false;

  void restartButton() async {
    await Future.delayed(const Duration(milliseconds: 200), () {
      if (mounted)
        setState(() {
          _isButtonTapped = !_isButtonTapped;
        });
    });
  }

  _onTapped() {
    restartButton();
    setState(() {
      if (widget.enable) widget.action();
      _isButtonTapped = !_isButtonTapped;
    }); //tapping the button once, disables the button from being tapped again
  }

  @override
  Widget build(BuildContext context) {
    var radioCorners = AppSettings.secondaryButtonRadioCorners;
    var color = AppColors.secondaryButtonColor;
    var filled = AppSettings.secondaryButtonFilled;

    return filled
        ? Container(
        width: double.infinity,
        height: 43.0,
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: RaisedButton(
            splashColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radioCorners)),
            onPressed:
            (_isButtonTapped || !widget.enable) ? null : _onTapped,
            disabledColor: AppColors.darkColor,
            color: color,
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style:
                AppTextStyles.subtitle4.copyWith(color: Colors.white))))
        : Container(
        width: double.infinity,
        height: 43.0,
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: RaisedButton(
            splashColor: color,
            shape: RoundedRectangleBorder(
                side: BorderSide(color: color),
                borderRadius: BorderRadius.circular(radioCorners)),
            onPressed:
            (_isButtonTapped || !widget.enable) ? null : _onTapped,
            disabledColor: Colors.white,
            onHighlightChanged: (value) => setState(() {
              onHighlight = value;
            }),
            color: Colors.white,
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style: AppTextStyles.subtitle4
                    .copyWith(color: onHighlight ? Colors.white : color))));
  }
}

class PrimarySmallButton extends StatelessWidget {
  PrimarySmallButton(
      {Key key, this.text, this.action, this.selected = false, this.width})
      : super(key: key);
  final String text;
  final VoidCallback action;
  final bool selected;
  final double width;

  @override
  Widget build(BuildContext context) {
    var radioCorners = AppSettings.primarySmallButtonRadioCorners;
    var color = AppColors.primarySmallButtonColor;
    var filled = AppSettings.primarySmallButtonFilled;

    return InkWell(
        onTap: action,
        child: Container(
            alignment: Alignment.center,
            height: 24.0,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                color: selected && filled ? color : Colors.white,
                borderRadius: BorderRadius.circular(radioCorners),
                border:
                Border.all(color: selected ? color : AppColors.darkColor)),
            child: Text(text,
                textAlign: TextAlign.center,
                style: AppTextStyles.subtitle3.copyWith(
                    color: selected
                        ? (filled ? Colors.white : color)
                        : AppColors.darkColor))));
  }
}

class SecondarySmallButton extends StatelessWidget {
  SecondarySmallButton(
      {Key key,
        this.text,
        this.action,
        this.selected = false,
        this.width,
        this.secondarySmallButtonDisableColor,
        this.secondarySmallButtonFilled,
        this.secondarySmallButtonColor,
        this.secondarySmallButtonRadioCorners})
      : super(key: key);
  final String text;
  final VoidCallback action;
  final bool selected;
  final double width;
  final double secondarySmallButtonRadioCorners;
  final Color secondarySmallButtonColor;
  final Color secondarySmallButtonDisableColor;
  final bool secondarySmallButtonFilled;

  @override
  Widget build(BuildContext context) {
    var radioCorners = secondarySmallButtonRadioCorners ??
        AppSettings.secondarySmallButtonRadioCorners;
    var color =
        secondarySmallButtonColor ?? AppColors.secondarySmallButtonColor;
    var filled =
        secondarySmallButtonFilled ?? AppSettings.secondarySmallButtonFilled;
    var disableColor = secondarySmallButtonDisableColor ?? AppColors.darkColor;

    return InkWell(
        onTap: action,
        child: Container(
            alignment: Alignment.center,
            height: 24.0,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                color: selected && filled ? color : Colors.white,
                borderRadius: BorderRadius.circular(radioCorners),
                border: Border.all(color: selected ? color : disableColor)),
            child: Text(text,
                style: AppTextStyles.subtitle2.copyWith(
                    color: selected
                        ? (filled ? Colors.white : color)
                        : disableColor))));
  }
}

class PrimaryTabButton extends StatelessWidget {
  PrimaryTabButton(
      {Key key,
        this.text,
        this.action,
        this.selected = false,
        this.width,
        this.primarySmallButtonDisableColor,
        this.primarySmallButtonFilled,
        this.primarySmallButtonColor,
        this.primarySmallButtonRadioCorners})
      : super(key: key);
  final String text;
  final VoidCallback action;
  final bool selected;
  final double width;
  final double primarySmallButtonRadioCorners;
  final Color primarySmallButtonColor;
  final Color primarySmallButtonDisableColor;
  final bool primarySmallButtonFilled;

  @override
  Widget build(BuildContext context) {
    var color = primarySmallButtonColor ?? AppColors.primarySmallButtonColor;

    var disableColor = primarySmallButtonDisableColor ?? AppColors.darkColor;

    return InkWell(
        onTap: action,
        child: Container(
            alignment: Alignment.center,
            height: 34.0,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                        color: selected ? color : Colors.transparent,
                        width: 2.0))),
            child: Text(text,
                style: AppTextStyles.subtitle3
                    .copyWith(color: selected ? null : disableColor))));
  }
}
