import 'package:flutter/material.dart';
import 'package:rendu_flutter_attala_maxime/utils/utils.dart';
import 'package:rendu_flutter_attala_maxime/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Let\'s sign you in!',
                textAlign: TextAlign.center,
                style: TitleStyle.main,
              ),
              Image.asset('welcome.jpg', height: 300),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
