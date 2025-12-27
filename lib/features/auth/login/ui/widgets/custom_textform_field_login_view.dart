import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:e_commerce/core/shared/widgets/custom_text_form_field.dart';
import 'package:e_commerce/core/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextformFieldLoginView extends StatelessWidget {
  const CustomTextformFieldLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hint: 'Email',
          iconButton: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email, color: ColorsApp.kGray),
          ),
        ),
        Gap(29),
        CustomTextFormField(
          hint: 'Password',
          iconButton: IconButton(
            onPressed: () {},
            icon: Icon(Icons.visibility, color: ColorsApp.kGray),
          ),
        ),
        Gap(15),
        Align(
          alignment: Alignment.centerRight,
          child: Customtext(
            text: 'Forgot Your Password?',
            color: ColorsApp.kGray,
            fontweight: FontWeight.w600,
            size: 12,
          ),
        ),
      ],
    );
  }
}
