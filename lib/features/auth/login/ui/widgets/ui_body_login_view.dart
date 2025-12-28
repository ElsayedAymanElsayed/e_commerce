import 'package:e_commerce/core/shared/widgets/custom_row_icon_back.dart';
import 'package:e_commerce/features/auth/login/ui/widgets/custom_text_login_view.dart';
import 'package:e_commerce/features/auth/login/ui/widgets/custom_textform_field_login_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UiBodyLoginView extends StatelessWidget {
  const UiBodyLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(10),
              CustomRowIconBack(),
              Gap(70),
              CustomTextLoginView(),
              Gap(30),
              CustomTextformFieldLoginView(),
            ],
          ),
        ),
      ),
    );
  }
}
