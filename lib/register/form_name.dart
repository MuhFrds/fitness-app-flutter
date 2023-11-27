import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/register/welcome.dart';

class FormName extends StatefulWidget {
  const FormName({Key? key});

  @override
  State<FormName> createState() => _FormNameState();
}

class _FormNameState extends State<FormName> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  String _firstName = '';
  String _lastName = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Hey there,',
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcome ',
                  style: TextStyle(
                    color: Color(0xFF1D1517),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 80,
                  child: TextField(
                    controller: firstNameController,
                    maxLength: 10,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'First Name',
                      hintText: 'Enter your first name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _firstName = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: TextField(
                    controller: lastNameController,
                    maxLength: 10,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Last Name',
                      hintText: 'Enter your last name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _lastName = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                    foregroundColor: Colors.white,
                    minimumSize: const Size(315, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99),
                    ),
                  ),
                  child: const Text('Confirm'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
