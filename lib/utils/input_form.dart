import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:idatos_celulares/utils/app_theme.dart';

class InputForm extends StatelessWidget {
  final String label;
  final Function(String)? onChanged;
  final GestureDetector? password;
  final TextInputType keyboardType;
  final Color color;
  final Color? cursorColor;
  final String? initialValue;
  final int? maxLength;
  final TextCapitalization? textCapitalization;
  final TextStyle? labelStyle;
  final bool? obscureText;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Widget? prefix;
  final TextEditingController? controller;
  const InputForm({
    super.key,
    required this.label,
    this.onChanged,
    required this.password,
    required this.keyboardType,
    required this.color,
    this.initialValue,
    this.maxLength,
    this.inputFormatters,
    this.cursorColor,
    this.textCapitalization,
    this.labelStyle,
    this.obscureText,
    this.validator,
    this.maxLines,
    this.prefix,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: (password != null) ? obscureText ?? false : false,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      autocorrect: true,
      keyboardType: keyboardType,
      cursorColor: cursorColor ?? AppTheme.nearlyWhite,
      style: labelStyle ?? TextStyle(color: color),
      maxLength: maxLength,
      maxLines: maxLines ?? null,
      inputFormatters: inputFormatters,
      buildCounter: (BuildContext context, {int? currentLength, int? maxLength, bool? isFocused}) {
        return null;
      },
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(13),
          suffixIcon: (password != null) ? password : null,
          focusColor: color,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.circular(30),
          ),
          prefix: prefix,
          labelStyle: labelStyle ?? AppTheme.inputText.copyWith(color: color),
          labelText: label),
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}

class InputFormLarge extends StatelessWidget {
  final String label;
  final Function(String)? onChanged;
  final GestureDetector? password;
  final TextInputType keyboardType;
  final Color color;
  const InputFormLarge({
    super.key,
    required this.label,
    this.onChanged,
    required this.password,
    required this.keyboardType,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: (password != null),
      autocorrect: false, //para que no intente corregir
      keyboardType: keyboardType,
      cursorColor: AppTheme.nearlyWhite,
      style: TextStyle(color: color),
      maxLines: null,
      minLines: 1,
      maxLength: 250,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(13),
          suffixIcon: (password != null) ? password : null,
          focusColor: color,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.circular(30),
          ),
          // disabledBorder: OutlineInputBorder(
          //   borderSide: const BorderSide(color: AppTheme.nearlyWhite, width: 1.0),
          //   borderRadius: BorderRadius.circular(30),
          // ),
          labelStyle: AppTheme.inputText.copyWith(color: color),
          labelText: label),
      onChanged: onChanged,
    );
  }
}
