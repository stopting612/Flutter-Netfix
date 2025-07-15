import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_button/reactive_button.dart';
import 'package:test/core/config/theme/app_colors.dart';
import 'package:test/router/app_name.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100, right: 16, left: 16),
        child: Column(
          children: [
            _signinText(),
            const SizedBox(
              height: 30,
            ),
            _emailTextField(),
            const SizedBox(
              height: 20,
            ),
            _passwordTextField(),
            const SizedBox(
              height: 60,
            ),
            _signInButton(),
            _signupText(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText() {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _emailTextField() {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
        hintText: 'Email',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _passwordTextField() {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
        hintText: 'Password',
      ),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
    );
  }

  Widget _signInButton() {
    return ReactiveButton(
      onPressed: () async {},
      title: 'Sign In',
      activeColor: AppColors.primary,
      onSuccess: () {
        print('Action succeeded!');
      },
      onFailure: (String error) {
        print('Action failed: $error');
      },
    );
  }

  Widget _signupText(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: "Don't have an account? ",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: 'Sign Up',
            style: const TextStyle(
              color: Colors.blue,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.go(AppRoutes.register.path);
              },
          ),
        ],
      ),
    );
  }
}
