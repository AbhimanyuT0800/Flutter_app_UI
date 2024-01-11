import 'package:flutter/material.dart';
import 'package:ui_tutorial/core/utils/dynamic_size.dart';
import 'package:ui_tutorial/view/pages/auth/login_page/login_page.dart';
import 'package:ui_tutorial/view/pages/botton_navigation_bar.dart';
import 'package:ui_tutorial/view/widgets/buttons/main_log_sign.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/vet_icon.dart';
import 'package:ui_tutorial/view/widgets/commonly_used/text_fied.dart';
import 'package:ui_tutorial/view/widgets/main_scafold/common_scafold_bg.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});
  static const signinPage = '/third';

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final List<String> mainTitle = [
    'USERNAME',
    'EMAIL',
    'PASSWORD',
    'CONFIRM PASSWORD',
    'PHONE NUMBER'
  ];

  final List<String> hintText = [
    'Enter your username',
    'Enter your email',
    'Enter your password',
    'Confirm your password',
    'Enter your phone number',
  ];
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.screenHeight(heigth: 49),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              spaceBw(height: context.screenHeight(heigth: 110)),
              const LogoWithTitle(),
              spaceBw(height: context.screenHeight(heigth: 50)),
              const Heading(title: 'Sign up'),
              spaceBw(height: context.screenHeight(heigth: 30)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // text field area
                  TextFieldArea(
                      title: mainTitle[0],
                      hintText: hintText[0],
                      inputType: TextInputType.name),
                  spaceBw(height: context.screenHeight(heigth: 15)),
                  TextFieldArea(
                      title: mainTitle[1],
                      hintText: hintText[1],
                      inputType: TextInputType.emailAddress),
                  spaceBw(height: context.screenHeight(heigth: 15)),
                  TextFieldArea(
                      title: mainTitle[2],
                      hintText: hintText[2],
                      inputType: TextInputType.visiblePassword),
                  spaceBw(height: context.screenHeight(heigth: 15)),
                  TextFieldArea(
                      title: mainTitle[3],
                      hintText: hintText[3],
                      inputType: TextInputType.visiblePassword),
                  spaceBw(height: context.screenHeight(heigth: 15)),
                  TextFieldArea(
                      title: mainTitle[4],
                      hintText: hintText[4],
                      inputType: TextInputType.number),
                  spaceBw(height: context.screenHeight(heigth: 10)),
                  // check box area
                  Row(
                    children: [
                      Checkbox(
                          activeColor: const Color.fromARGB(255, 53, 50, 50),
                          checkColor: Colors.white,
                          shape: const CircleBorder(),
                          value: value,
                          onChanged: (bool? check) {
                            setState(() {
                              value = check!;
                            });
                          }),
                      Text(
                        'user agrees to the terms of service and privacy policy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: context.screenHeight(heigth: 12),
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  )
                ],
              ),
              spaceBw(height: context.screenHeight(heigth: 0)),
              //  button for signup
              ElevatedButttonBottom(
                  str: 'SIGN UP',
                  onpressed: () {
                    Navigator.pushNamed(
                        context, BottomNavigationPage.bottomNavigationPage);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
