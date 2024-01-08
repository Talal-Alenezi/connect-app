import 'package:connect_app/app/config/routes/my_named_route.dart';
import 'package:connect_app/app/core/extentions/build_context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.pushNamed(MyNamedRoutes.register);
          },
          child: Container(
              height: context.screenHeight * 0.3,
              width: context.screenWidth * 0.3,
              color: Colors.red,
              child: Center(child: Text(context.translate.login))),
        ),
      ),
    );
  }
}
