import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/register/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _firstName = '';
  String _lastName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Write Your First Name',
                  labelText: 'Your First Name',
                ),
                onChanged: (String value) {
                  setState(() {
                    _firstName = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 300,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Write Your Last Name',
                  labelText: 'Your Last Name',
                ),
                onChanged: (String value) {
                  setState(() {
                    _lastName = value;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcome1(
                      firstName: _firstName,
                      lastName: _lastName,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCC8FED),
                  minimumSize: const Size(315, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99))),
              child: const Text('Confirm'),
            )
          ],
        ),
      ),
    );
  }
}
