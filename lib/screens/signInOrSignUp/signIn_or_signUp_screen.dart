import 'package:chat_app/screens/chats/chat_screen.dart';
import 'package:flutter/material.dart';

import '../../components/primary_button.dart';
import '../../constants.dart';

class SignInOrSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? "assets/images/Logo_light.png"
                    : "assets/images/Log o_dark.png",
                height: 146,
              ),
              Spacer(),
              PrimaryButton(
                  color: Theme.of(context).colorScheme.primary,
                  text: "Sign In",
                  press: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatsScreen()))),
              SizedBox(height: kDefaultPadding),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () {},
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
