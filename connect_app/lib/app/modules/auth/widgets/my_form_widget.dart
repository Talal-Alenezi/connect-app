// ignore_for_file: unused_element

import 'package:connect_app/app/core/extentions/build_context_extentions.dart';
import 'package:connect_app/app/modules/auth/domain/helper/auth_validators.dart';
import 'package:connect_app/app/modules/auth/widgets/my_textform_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAuthForm extends StatefulWidget {
  const MyAuthForm({
    super.key,
    this.registerFormKey,
  });

  final GlobalKey<FormState>? registerFormKey;

  @override
  State createState() => _MyAuthFormState();
}

class _MyAuthFormState extends State<MyAuthForm> {
  final authValidators = AuthValidators();

  final TextEditingController emailController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();

  final TextEditingController userNameController = TextEditingController();
  final FocusNode userNameFocus = FocusNode();

  final TextEditingController passwordController = TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    emailFocusNode.dispose();

    passwordController.dispose();
    passwordFocusNode.dispose();

    userNameController.dispose();
    userNameFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Form(
        key: widget.registerFormKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              MyTextFormWidget(
                controller: emailController,
                obscureText: false,
                focusNode: emailFocusNode,
                validator: (input) {
                  return authValidators.emailValidator(input);
                },
                prefIcon: const Icon(Icons.email),
                labelText: context.translate.email,
                textInputAction: TextInputAction.next,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextFormWidget(
                controller: userNameController,
                obscureText: false,
                focusNode: userNameFocus,
                validator: (input) => authValidators.userNameValidator(input),
                prefIcon: const Icon(Icons.person),
                labelText: context.translate.userName,
                textInputAction: TextInputAction.next,
                onChanged: null,
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextFormWidget(
                controller: passwordController,
                obscureText: false,
                focusNode: passwordFocusNode,
                validator: (input) => authValidators.passwordVlidator(input),
                prefIcon: const Icon(Icons.password),
                labelText: context.translate.password,
                textInputAction: TextInputAction.done,
                onChanged: null,
                togglePassword: null,
                suffexIcon: Icon(
                  Icons.remove_red_eye_outlined,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
