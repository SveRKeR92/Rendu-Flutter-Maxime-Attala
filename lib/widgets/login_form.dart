import 'package:flutter/material.dart';
import 'package:rendu_flutter_attala_maxime/pages/user_details.dart';
import 'package:rendu_flutter_attala_maxime/utils/utils.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void loginUser() {
      if (_formKey.currentState!.validate()) {
        print(userNameController.text);
        // var list = UserRepository().readDataById(1);
        // print(list);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    UserDetails(username: userNameController.text, userId: 1)));
      } else {
        print('login failed!');
      }
    }

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username';
              }
              return null;
            },
            decoration: const InputDecoration(
                hintText: "Add your username",
                border: InputStyle.mainBorder,
                hintStyle: InputStyle.mainHintStyle),
            controller: userNameController,
          ),
          TextFormField(
            validator: (value) {
              if (value != null && value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
                hintText: "Add your password",
                border: InputStyle.mainBorder,
                hintStyle: InputStyle.mainHintStyle),
          ),
          ElevatedButton(
              onPressed: loginUser,
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              )),
        ],
      ),
    );
  }
}
