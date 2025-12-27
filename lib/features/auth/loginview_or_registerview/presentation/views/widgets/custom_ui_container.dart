import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:e_commerce/core/shared/widgets/custom_container_buttom.dart';
import 'package:e_commerce/core/utils/constants/const_app_router.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CustomUiContainer extends StatelessWidget {
  const CustomUiContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomContainerButtom(
            ontap: () => GoRouter.of(context).push(ConstAppRouter.idLoginview),
            backgroundColor: ColorsApp.kbuttomColorblue,
            text: 'Login',
          ),
        ),
        Gap(10),
        Expanded(
          child: CustomContainerButtom(
            colortext: Colors.black,
            border: Border.all(color: Colors.black54),
            backgroundColor: ColorsApp.kPrimaryColorWhite,
            text: 'Register',
          ),
        ),
      ],
    );
  }
}
