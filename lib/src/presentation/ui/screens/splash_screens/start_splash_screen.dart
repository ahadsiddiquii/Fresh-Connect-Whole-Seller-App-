import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_connect_whole_saler_customer/src/infrastructure/local_storage/local_storage.dart';
import 'package:fresh_connect_whole_saler_customer/src/infrastructure/screen_size_config/screen_size_config.dart';
import 'package:fresh_connect_whole_saler_customer/src/presentation/bloc/user/user_bloc.dart';
import 'package:fresh_connect_whole_saler_customer/src/presentation/ui/screens/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print("Splash screen showing");
    // initialize().then((e) {
    //   setState(() {
    //     try {
    //       if (Storage.getValue("language") == null) {
    //         Storage.setValue("language", "english");
    //       }
    //     } catch (e) {
    //       Storage.setValue("language", "english");
    //     }
    //   });
    // });
  }

  initialize() async {
    await Storage.initialize();
  }

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      // backgroundColor: Color(0xff87c232),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.black,
          height: ScreenConfig.screenHeight * 1.2,
          width: ScreenConfig.screenSizeWidth * 0.7,
          child: Image.asset(
            'assets/images/freshConnectLogo.jpg',
            width: ScreenConfig.screenSizeWidth,
            fit: BoxFit.cover,
          ),
        ),
      ),

      // BlocListener<UserBloc, UserState>(
      //   listener: (context, state) {
      //     // if (state is UserLoggedIn) {
      //     //   print('User Logged In home builder in app.dart');
      //     //   Navigator.of(context).pushReplacementNamed(MainScreen.routeName);
      //     //   // return MainScreen();
      //     // } else
      //     if (state is UserInitial) {
      //       Navigator.of(context).pushReplacementNamed(SigninScreen.routeName);
      //     }
      //     // return OnboardingScreen();

      //     // return SignInScreen();
      //     // }
      //   },
      //   child: Center(
      //     child: Container(
      //       color: Colors.black,
      //       height: 40,
      //       width: ScreenConfig.screenSizeWidth * 0.7,
      //       child: Image.asset(
      //         'assets/images/freshConnectLogo.jpg',
      //         width: ScreenConfig.screenSizeWidth,
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
