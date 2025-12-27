import 'package:e_commerce/core/shared/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomUiText extends StatelessWidget {
  const CustomUiText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 75,
          child: Text(
            textAlign: TextAlign.center,
            'Welcome to smart shopping',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Gap(10),
        SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Customtext(
            text:
                'Shop & get update on new products,prometion and sales with our Mobile App',
            color: Colors.grey,
            textAlign: TextAlign.center,
            fontweight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
