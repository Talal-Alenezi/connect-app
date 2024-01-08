import 'package:connect_app/app/core/extentions/build_context_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyTextFormWidget extends ConsumerWidget {
  const MyTextFormWidget(
      {required this.controller,
      required this.obscureText,
      required this.focusNode,
      required this.validator,
      required this.prefIcon,
      required this.labelText,
      required this.textInputAction,
      required this.onChanged,
      this.suffexIcon,
      this.togglePassword,
      super.key});

  // Controller for the text field
  final TextEditingController controller;
  // to obscure text or not bool
  final bool obscureText;
  // FocusNode for input
  final FocusNode focusNode;
  // Validator function
  final String? Function(String?)? validator;
  // Prefix icon for input form
  final Icon prefIcon;
  // Suffex icon for password field
  final Icon? suffexIcon;
  // label for input form
  final String labelText;
  // The keyword action to display
  final TextInputAction textInputAction;

  final String? Function(String?)? onChanged;

  final void Function()? togglePassword;

  @override
  Widget build(BuildContext context, WidgetRef) {
    return SizedBox(
      height: context.screenHeight * 0.07,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          // Input with border outlined
          border: const OutlineInputBorder(
            // Make border edge circular
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          label: Text(labelText),
          suffix: IconButton(
            onPressed: togglePassword,
            icon: suffexIcon ?? const SizedBox(),
          ),
          prefixIcon: prefIcon,
        ),
        focusNode:
            focusNode, // i can use it to know if the keyboard is shown or not
        textInputAction: textInputAction,
        obscureText: obscureText,
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
