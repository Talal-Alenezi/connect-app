import 'package:connect_app/app/core/extentions/build_context_extentions.dart';
import 'package:connect_app/app/modules/auth/widgets/my_form_widget.dart';

import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            context.translate.register,
            style: context.textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyAuthForm(
                registerFormKey: formKey,
              ),
              SizedBox(
                height: context.screenHeight * 0.04,
              ),
              ElevatedButton(
                  onPressed: () {}, child: Text(context.translate.register)),
              SizedBox(
                height: context.screenHeight * 0.04,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    context.translate.googleRegister,
                    style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColor),
                  ))
            ],
          ),
        ));
  }
}
