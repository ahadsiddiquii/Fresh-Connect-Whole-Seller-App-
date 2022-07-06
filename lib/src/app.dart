import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_connect_whole_saler_customer/src/presentation/bloc/user/user_bloc.dart';
import 'package:fresh_connect_whole_saler_customer/src/presentation/ui/config/routes.dart';
import 'package:fresh_connect_whole_saler_customer/src/presentation/ui/config/theme.dart';
import 'package:fresh_connect_whole_saler_customer/src/presentation/ui/screens/splash_screens/start_splash_screen.dart';

import 'package:overlay_support/overlay_support.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc()..add(CheckIfLoggedIn()),
        ),
      ],
      child: OverlaySupport(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            routes: routes,
            home: SplashScreen()),
      ),
    );
  }
}
