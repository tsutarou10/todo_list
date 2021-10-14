import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget textField(String labelText, String hintText, bool autoFocus, var controllor, int? limitTextLength, int? maxLines) {
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: labelText,
      hintText: hintText,
    ),
    inputFormatters: [
      LengthLimitingTextInputFormatter(limitTextLength),
    ],
    keyboardType: TextInputType.multiline,
    controller: controllor,
    autofocus: autoFocus,
    maxLines: maxLines,
  );
}
