import 'package:e_commerce/features/auth/loginview_or_registerview/presentation/views/widgets/custom_image.dart';
import 'package:e_commerce/features/auth/loginview_or_registerview/presentation/views/widgets/custom_ui_container.dart';
import 'package:e_commerce/features/auth/loginview_or_registerview/presentation/views/widgets/custom_ui_text.dart';
import 'package:flutter/material.dart';

class UiBodyLoginorregister extends StatelessWidget {
  const UiBodyLoginorregister({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Spacer(flex: 3),
            CustomImage(),
            Spacer(flex: 1),
            CustomUiText(),
            Spacer(flex: 2),
            CustomUiContainer(),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
