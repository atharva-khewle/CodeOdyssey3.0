import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _userType;
  bool _saveLoginInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 40,
                child: Icon(Icons.person, size: 40, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Login or Sign Up Today',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Discover New Connections and Meaningful\nRelationships with Our App',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Log in'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Sign up'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.clear),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _userType,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select user type',
                ),
                items: ['Student', 'Staff']
                    .map((type) => DropdownMenuItem(
                  value: type,
                  child: Text(type),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _userType = value;
                  });
                },
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: _saveLoginInfo,
                    onChanged: (value) {
                      setState(() {
                        _saveLoginInfo = value!;
                      });
                    },
                  ),
                  Text('Save login info'),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('or'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.apple),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.g_mobiledata),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.phone),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Log in'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}