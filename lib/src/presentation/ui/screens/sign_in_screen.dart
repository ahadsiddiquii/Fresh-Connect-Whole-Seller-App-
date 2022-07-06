import 'package:flutter/material.dart';
import 'package:fresh_connect_whole_saler_customer/src/infrastructure/screen_size_config/screen_size_config.dart';

class SigninScreen extends StatefulWidget {
  static const routeName = '/sign-in-screen';
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenConfig.screenHeight,
        width: ScreenConfig.screenSizeWidth * 0.9,
        child: Column(
          children: [
            Image.asset(
              'assets/images/freshConnectLogo.jpg',
              width: ScreenConfig.screenSizeWidth,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
