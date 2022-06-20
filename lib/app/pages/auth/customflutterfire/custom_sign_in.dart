import 'package:flutter/material.dart';

import 'custom_form.dart';

class CustomSignInWidget extends StatelessWidget {
  const CustomSignInWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomEmailSignInForm(),
    );
  }
}
