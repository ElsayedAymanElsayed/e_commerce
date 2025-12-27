import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextLoginView extends StatelessWidget {
  const CustomTextLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Login here', style: Theme.of(context).textTheme.headlineLarge),
        Gap(15),
        SizedBox(
          width: MediaQuery.of(context).size.width * .80,
          child: Text(
            'Welcome back you’ve been missed!',
            style: Theme.of(context).textTheme.headlineMedium,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
