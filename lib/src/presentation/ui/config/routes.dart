import 'package:flutter/material.dart';
import 'package:fresh_connect_whole_saler_customer/src/presentation/ui/screens/sign_in_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  SigninScreen.routeName: (ctx) => const SigninScreen(),
};
