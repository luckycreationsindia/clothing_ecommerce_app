import 'package:clothing_ecommerce_app/utils/constants.dart';
import 'package:clothing_ecommerce_app/widgets/circular_icon_button.dart';
import 'package:clothing_ecommerce_app/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset("images/logo.png", height: 120),
              const SizedBox(height: 20),
              const Text("Sign Up"),
              const SizedBox(height: 20),
              const CustomInputField(
                icon: Icons.person,
                hint: 'Name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 10),
              const CustomInputField(
                icon: Icons.email,
                hint: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              const CustomInputField(
                icon: Icons.lock,
                hint: 'Password',
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                    ),
                    const Text("I accept all the Terms & Conditions"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () => context.go(RouteConstants.homeRoutePath),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(child: Divider(indent: 30, endIndent: 30)),
                  Text("Or"),
                  Expanded(child: Divider(indent: 30, endIndent: 30)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleIconButton(
                    icon: FontAwesomeIcons.facebook,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  CircleIconButton(
                    icon: FontAwesomeIcons.google,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => context.go(RouteConstants.loginRoutePath),
                child: const Text("Already have an account? Log In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
