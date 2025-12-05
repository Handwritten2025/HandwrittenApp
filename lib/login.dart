import 'package:flutter/material.dart';
import 'package:handapp/user_reg.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: username,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your username";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Username',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.lightBlue)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.lightBlue))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your password";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.lightBlue)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.lightBlue))),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserReg(),
                            ));
                      }
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
