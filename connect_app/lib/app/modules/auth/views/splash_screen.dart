import 'package:connect_app/app/core/extentions/build_context_extentions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: context.screenHeight * 0.3,
            width: context.screenWidth * 0.3,
            color: Colors.red,
            child: Center(child: Text(context.translate.login))),
      ),
    );
  }
}
