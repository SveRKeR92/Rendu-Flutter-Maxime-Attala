import 'package:flutter/material.dart';
import 'package:rendu_flutter_attala_maxime/widgets/user_details_form.dart';

import '../utils/utils.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key, required this.username, required this.userId})
      : super(key: key);
  final String username;
  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User details of $username"),
      ),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello $username", style: TitleStyle.main,),
                    UserDetailsForm(username: username, userId: 1)
                  ]))),
    );
  }
}

/*
class UserDetails extends StatefulWidget {
  final String username;
  final int userId;
  const UserDetails({super.key, required this.username, required this.userId});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User details"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$widget.username"),
          ],
        ),
      ),
    );
  }
}
*/
