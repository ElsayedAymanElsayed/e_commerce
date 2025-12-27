import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:e_commerce/core/shared/widgets/custom_container_buttom.dart';
import 'package:flutter/material.dart';

class CustomContainerLoginView extends StatelessWidget {
  const CustomContainerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerButtom(
      backgroundColor: ColorsApp.kbuttomColorblue,
      text: 'Sign in',
      ontap: () {},
    );
  }
}
