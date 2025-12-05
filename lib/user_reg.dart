import 'package:flutter/material.dart';
import 'package:handapp/login.dart';

class UserReg extends StatefulWidget {
  const UserReg({super.key});

  @override
  _UserRegState createState() => _UserRegState();
}
TextEditingController name=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController phone=TextEditingController();
TextEditingController dob=TextEditingController();
TextEditingController age=TextEditingController();
TextEditingController address=TextEditingController();
final formkey=GlobalKey<FormState>();
class _UserRegState extends State<UserReg> {
  String? _selectedGender; // Store selected gender

  final List<String> _genders = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Registration")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(key: formkey,
          child: Column(
            children: [
              TextFormField(controller:name ,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return "Enter your name";
                }
              },
                decoration: InputDecoration(labelText: 'Name',
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.lightBlue)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.lightBlue)
                )),
              ),
              SizedBox(height: 20),
              TextFormField(controller: email,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return "Enter your email";
                }
              },
                decoration: InputDecoration(
                    labelText: 'E-mail',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.lightBlue)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.lightBlue))),
              ),
              SizedBox(height: 20),
              TextFormField(controller: phone,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return "Enter your phone";
                }
              },
                decoration: InputDecoration(labelText: 'Phone',
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.lightBlue)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.lightBlue))),
              ),
              SizedBox(height: 20),
              TextFormField(controller: dob,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return "Enter your dob";
                }
              },
                decoration: InputDecoration(labelText: 'DOB',
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.lightBlue)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.lightBlue))),
              ),
              SizedBox(height: 20),
              TextFormField(controller: age,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return "Enter your age";
                }
              },
                decoration: InputDecoration(labelText: 'Age',
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.lightBlue)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.lightBlue))),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Gender",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                value: _selectedGender,
                items: _genders.map((String gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              SizedBox(height: 20),
              TextFormField(controller: address,
              validator: (value) {
                if(value==null||value.isEmpty){
                  return "Enter your address";
                }
              },
                maxLines: 3,
                decoration: InputDecoration(labelText: 'Address',
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.lightBlue)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightBlue))),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if(formkey.currentState!.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
