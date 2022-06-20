import "package:flutter/material.dart";
import "package:flutterfire_ui/auth.dart";

class CustomEmailSignInForm extends StatelessWidget {
  CustomEmailSignInForm({Key? key}) : super(key: key);

  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthFlowBuilder<EmailFlowController>(
        listener: (oldState, state, controller) {
      if (state is SignedIn) {
        Navigator.of(context).pushReplacementNamed('/profile');
      }
    }, builder: (context, state, controller, _) {
      if (state is AwaitingEmailAndPassword) {
        return Column(
          children: [
            TextField(controller: emailCtrl),
            TextField(controller: passwordCtrl),
            ElevatedButton(
              onPressed: () {
                controller.setEmailAndPassword(
                  emailCtrl.text,
                  passwordCtrl.text,
                );
              },
              child: const Text('Sign in'),
            ),
          ],
        );
      } else if (state is SigningIn) {
        return Center(child: CircularProgressIndicator());
      } else if (state is AuthFailed) {
        // FlutterFireUIWidget that shows a human-readable error message.
        return ErrorText(exception: state.exception);
      }
      return Container(); //null event
    });
  }
}
