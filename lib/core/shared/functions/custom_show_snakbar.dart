import 'package:e_commerce/core/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';

void customShowSnakBar({
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Customtext(text: message, fontweight: FontWeight.bold),
    ),
  );
}
