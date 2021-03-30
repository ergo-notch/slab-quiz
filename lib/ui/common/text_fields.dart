import 'package:flutter/material.dart';
import 'package:slabs_quiz/app/app_text_styles.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {@required this.fieldKey,
      @required this.node,
      this.nextNode,
      @required this.labelText,
      this.keyboardType,
      @required this.validator,
      this.autoFocus,
      this.initialValue,
      this.textAlign,
      this.hint,
      this.suffixIcon,
      this.autoValidate = false,
      this.autoCorrect = false,
      this.controller,
      this.enable});

  final Key fieldKey;
  final FocusNode node;
  final FocusNode nextNode;
  final Widget suffixIcon;
  final String labelText;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final Function(String) validator;
  final bool autoFocus;
  final bool enable;
  final bool autoValidate;
  final bool autoCorrect;

  final String hint;
  final String initialValue;
  final TextEditingController controller;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
            enabled: widget.enable ?? true,
            textInputAction:
                widget.nextNode != null ? TextInputAction.next : null,
            textAlign: widget.textAlign ?? TextAlign.left,
            focusNode: widget.node,
            keyboardType: widget.keyboardType,
            key: widget.fieldKey,
            autocorrect: widget.autoCorrect,
            autovalidate: widget.autoValidate,
            validator: widget.validator,
            onFieldSubmitted: (v) {
              if (widget.nextNode != null)
                FocusScope.of(context).requestFocus(widget.nextNode);
            },
            decoration: InputDecoration(
                labelText: widget.labelText,
                labelStyle: AppTextStyles.normal4,
                hintText: widget.hint,
                suffixIcon: widget.suffixIcon,
                errorMaxLines: 3),
            initialValue: widget.initialValue,
            controller: widget.controller));
  }
}
