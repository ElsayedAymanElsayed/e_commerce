import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomRowIconBack extends StatelessWidget {
  const CustomRowIconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).pop(),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios, color: ColorsApp.kGray),
          Text(
            'Back',
            style: Theme.of(
              context,
            ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
