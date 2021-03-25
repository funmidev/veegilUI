class OnboardingPage {

  String imageUrl;
  String title;
  String description;

  OnboardingPage(this.imageUrl, this.title, this.description);

}

List<OnboardingPage> getOnboardingPages(){
  return <OnboardingPage>[
    OnboardingPage("assets/images/onboarding_1.png", "Quick and easy.", "Millions of customers around the world use us for one simple reason: it's simple. Just an email address and password will get you through to check out before you can reach for your wallet."),
    OnboardingPage("assets/images/onboarding_2.png", "We've got you covered.", "Shop with peace of mind, knowing we protect your elegible information. If an eligible item function or services didn't work, we will surely rectify such issue in a minute"),
    OnboardingPage("assets/images/onboarding_3.png", "Bank around the world.", "No running or difficulties with Bank, knowing your details are never shared with the anyone."),
  ];
}