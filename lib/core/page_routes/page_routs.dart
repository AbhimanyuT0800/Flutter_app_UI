import 'package:ui_tutorial/view/pages/auth/login_page/login_page.dart';
import 'package:ui_tutorial/view/pages/auth/signin_page/signin_page.dart';
import 'package:ui_tutorial/view/pages/botton_navigation_bar.dart';
import 'package:ui_tutorial/view/pages/onboarding_screen/on_boarding.dart';

final pageRoute = {
  OnBoardingScreen.onBoardingScreen: (context) => const OnBoardingScreen(),
  LoginPage.loginPage: (context) => const LoginPage(),
  SigninPage.signinPage: (context) => const SigninPage(),
  BottomNavigationPage.bottomNavigationPage: (context) =>
      const BottomNavigationPage()
};
