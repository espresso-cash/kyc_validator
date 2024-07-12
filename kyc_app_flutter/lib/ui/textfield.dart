import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum CpTextFieldBorder { rounded, stadium }

class CpTextField extends StatelessWidget {
  const CpTextField({
    super.key,
    this.controller,
    this.placeholder,
    this.margin,
    this.inputType,
    this.inputFormatters,
    this.placeholderColor = const Color(0xffC2C2C2),
    this.backgroundColor = const Color(0xffF5F5F5),
    this.readOnly = false,
    this.fontSize = 20,
    this.disabled = false,
    this.padding = const EdgeInsets.all(24),
    this.suffix,
    this.border = CpTextFieldBorder.stadium,
    this.prefix,
    this.textColor = const Color(0xff231f20),
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.multiLine = false,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextEditingController? controller;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color placeholderColor;
  final String? placeholder;
  final EdgeInsetsGeometry? margin;
  final bool readOnly;
  final double fontSize;
  final bool disabled;
  final TextInputType? inputType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final Widget? prefix;
  final CpTextFieldBorder border;
  final Color? textColor;
  final TextAlign textAlign;
  final TextInputAction? textInputAction;
  final bool? multiLine;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    final prefix = this.prefix;
    final multiLine = this.multiLine ?? false;

    return Container(
      margin: margin,
      decoration: border == CpTextFieldBorder.stadium
          ? ShapeDecoration(
              color: backgroundColor,
              shape: const StadiumBorder(),
            )
          : BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
      child: CupertinoTextField(
        enabled: !disabled,
        decoration: const BoxDecoration(),
        suffix: suffix,
        padding: padding,
        readOnly: readOnly,
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        maxLines: multiLine ? null : 1,
        cursorColor: const Color(0xffFCC829),
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: fontSize,
          color: textColor,
          height: 1.2,
        ),
        textAlign: textAlign,
        placeholder: placeholder,
        keyboardType: inputType,
        inputFormatters: inputFormatters,
        textCapitalization: textCapitalization,
        keyboardAppearance: Theme.of(context).brightness,
        placeholderStyle: TextStyle(color: placeholderColor),
        textInputAction: textInputAction,
        prefix: prefix == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(left: 16),
                child: prefix,
              ),
      ),
    );
  }
}
