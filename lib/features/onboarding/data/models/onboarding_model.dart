class OnboardingModel {
  final String image;
  final String titel;
  final String description;
  final String bottomText;
  final String skiptext;

  const OnboardingModel({
    required this.image,
    required this.titel,
    required this.description,
    required this.bottomText,
    required this.skiptext,
  });

  static List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: 'assets/images/image_man.png',
      titel: 'Browse the Menu',
      description:
          'Find your favorite items easily and place your order in seconds.',
      bottomText: 'Next',
      skiptext: 'Skip',
    ),
    OnboardingModel(
      image: 'assets/images/image_woman.png',
      titel: 'Track Your Order',
      description: 'Track your order live and know exactly when it arrives',
      bottomText: 'Next',
      skiptext: 'Skip',
    ),
    OnboardingModel(
      image: 'assets/images/image_shop.png',
      titel: 'Pickup or Delivery',
      description:
          'Choose delivery or pick up your order securely from the store',
      bottomText: 'Get Started',
      skiptext: 'Skip',
    ),
  ];
}
