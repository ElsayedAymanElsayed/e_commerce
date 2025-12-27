import 'package:e_commerce/core/utils/constants/const_app_router.dart';
import 'package:e_commerce/features/onboarding/data/models/onboarding_model.dart';
import 'package:e_commerce/features/onboarding/presentation/views/widgets/uibody_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageViewOnboarding extends StatefulWidget {
  const PageViewOnboarding({super.key});

  @override
  State<PageViewOnboarding> createState() => _PageViewOnboardingState();
}

class _PageViewOnboardingState extends State<PageViewOnboarding> {
  late PageController controller;
  late int selected;
  final data = OnboardingModel.onboardingList;
  @override
  void initState() {
    super.initState();
    selected = 0;
    controller = PageController(initialPage: selected);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (value) {
        setState(() {
          selected = value;
        });
      },
      controller: controller,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return UibodyOnboarding(
          numberVisibility: index,
          description: data[index].description,
          onImage: data[index].image,
          title: data[index].titel,
          controller: controller,
          onpressedbuttom: () {
            if (index == data.length - 1) {
              GoRouter.of(context).push(ConstAppRouter.idloginorRegister);
            } else {
              goToanimatePage(selected + 1);
            }
          },
          elevatedtext: data[index].bottomText,
          buttomtext: data[index].skiptext,
          onpressedtext: () {
            goToanimatePage(selected - 1);
          },
        );
      },
    );
  }

  void goToanimatePage(int number) {
    controller.animateToPage(
      number,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
