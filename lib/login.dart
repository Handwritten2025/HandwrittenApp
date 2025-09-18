import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
