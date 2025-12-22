import 'package:e_commerce/features/onboarding/data/models/onboarding_model.dart';
import 'package:e_commerce/features/onboarding/presentation/views/widgets/uibody_onboarding.dart';
import 'package:flutter/material.dart';

class PageViewOnboarding extends StatefulWidget {
  const PageViewOnboarding({super.key});

  @override
  State<PageViewOnboarding> createState() => _PageViewOnboardingState();
}

class _PageViewOnboardingState extends State<PageViewOnboarding> {
  PageController controller = PageController();
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            selected = value;
          });
        },
        controller: controller,
        itemCount: OnboardingModel.onboardingList.length,
        itemBuilder: (context, index) {
          return UibodyOnboarding(
            description: OnboardingModel.onboardingList[index].description,
            onImage: OnboardingModel.onboardingList[index].image,
            title: OnboardingModel.onboardingList[index].titel,

            controller: controller,
            onpressedbuttom: () {
              if (selected < OnboardingModel.onboardingList.length - 1) {
                controller.jumpToPage(selected + 1);
              }
            },
            elevatedtext: OnboardingModel.onboardingList[index].bottomText,
            buttomtext: OnboardingModel.onboardingList[index].skiptext,
            onpressedtext: () {},
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
