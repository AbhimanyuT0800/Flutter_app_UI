import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/colors/main_colors.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/pages/auth/login_page/suggest_text.dart';
import 'package:ui_tutorial/view/pages/auth/signin_page/signin_page.dart';
import 'package:ui_tutorial/view/pages/botton_navigation_bar.dart';
import 'package:ui_tutorial/view/widgets/buttons/main_log_sign.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/vet_icon.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/text_fied.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String loginPage = '/second';

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: context.screenHeight(heigth: 49)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // spaceBw(height: context.screenHeight(heigth: 340)),
            const LogoWithTitle(),
            spaceBw(height: context.screenHeight(heigth: 60)),
            const Heading(title: 'Welcome to Hero\'s Journey'),
            spaceBw(height: context.screenHeight(heigth: 30)),
            const TextFieldArea(
              inputType: TextInputType.name,
              title: 'USERNAME',
              hintText: 'Enter email or username',
            ),
            spaceBw(height: context.screenHeight(heigth: 15)),
            const TextFieldArea(
              inputType: TextInputType.visiblePassword,
              title: 'PASSWORD',
              hintText: 'Enter your password',
            ),
            spaceBw(height: context.screenHeight(heigth: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textOf(colorOf: Colors.white, str: 'Remember me'),
                textOf(
                    str: 'Forgot password',
                    colorOf: const Color.fromARGB(255, 0, 255, 8))
              ],
            ),
            spaceBw(
              height: context.screenHeight(heigth: 50),
            ),
            ElevatedButttonBottom(
                str: 'login',
                onpressed: () {
                  Navigator.pushNamed(
                      context, BottomNavigationPage.bottomNavigationPage);
                }),
            spaceBw(height: context.screenHeight(heigth: 15)),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, SigninPage.signinPage);
              },
              child: const SuggestLogin(
                  mainText: 'Don\'t have an account?', subText: 'Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}

textOf({String? str, Color? colorOf}) {
  return Text(
    '$str',
    style: TextStyle(color: colorOf, fontSize: 15),
  );
}

class Heading extends StatelessWidget {
  const Heading({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: BasicTextColors().textWhite,
          fontWeight: FontWeight.w700,
          fontSize: context.screenHeight(heigth: 25)),
    );
  }
}
