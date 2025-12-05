import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
                labelText: 'feedback',
          
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.lightBlue)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.lightBlue))),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: () {
          
        }, child: Text("Submit"))
      ]),
    );
  }
}
