import 'package:flutter/material.dart';
import 'package:rendu_flutter_attala_maxime/utils/utils.dart';

class UserDetailsForm extends StatelessWidget {
  final String username;
  final int userId;

  UserDetailsForm({super.key, required this.username, required this.userId});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void saveUser() {
      print("Saved");
      //code to save the user
      /*
      * UserRepository().insertData(username, userId)
      * */
    }

    void updateUser() {
      //code to update the user
      /*
      * UserRepository().updateData(username, userId)
      * */
      print("updated");
    }

    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
              initialValue: username,
              // controller: userNameController,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              enabled: false,
              initialValue: "$userId",
              decoration: const InputDecoration(
                  hintText: "Add your username",
                  border: InputStyle.mainBorder,
                  hintStyle: InputStyle.mainHintStyle),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: saveUser,
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  child: const Text("Save"),
                ),
                ElevatedButton(
                  onPressed: updateUser,
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)),
                  child: const Text("Update"),
                )
              ],
            )
          ],
        ));
  }
}
