import 'package:e_commerce/core/shared/theme/colors_app.dart';
import 'package:e_commerce/core/shared/widgets/custom_elevatedbuttom.dart';
import 'package:e_commerce/features/onboarding/presentation/views/widgets/custom_smoothpage.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UibodyOnboarding extends StatelessWidget {
  const UibodyOnboarding({
    super.key,
    required this.description,
    required this.onImage,
    required this.title,
    required this.controller,
    required this.onpressedbuttom,
    required this.elevatedtext,
    required this.buttomtext,
    required this.onpressedtext,
    required this.numberVisibility,
  });
  final String onImage;
  final String title;
  final String description;
  final PageController controller;
  final VoidCallback onpressedbuttom;
  final String elevatedtext;
  final VoidCallback onpressedtext;
  final String buttomtext;
  final int numberVisibility;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(50),
        Image.asset(
          onImage,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width * .5,
          height: MediaQuery.of(context).size.height * .3,
        ),
        Gap(50),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: ColorsApp.kbuttomColor,
          ),
        ),
        Gap(10),
        SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Text(
            style: const TextStyle(color: Colors.black45, fontSize: 16),
            description,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
        Gap(50),
        CustomSmoothpage(controller: controller),
        Gap(40),
        CustomElevatedbuttom(onpressed: onpressedbuttom, text: elevatedtext),
        Visibility(
          visible: numberVisibility != 0,
          child: TextButton(
            onPressed: onpressedtext,
            child: Text(
              buttomtext,
              style: TextStyle(color: ColorsApp.kbuttomColor),
            ),
          ),
        ),
      ],
    );
  }
}
