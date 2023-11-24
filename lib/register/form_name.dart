import 'package:flutter/material.dart';

class FormName extends StatefulWidget {
  const FormName({super.key});

  @override
  State<FormName> createState() => _FormNameState();
}

class _FormNameState extends State<FormName> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 100,
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: const Icon(Icons.person),
                      labelText: 'Nama Depan',
                      hintText: 'Tulis Nama Depan Anda',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'Nama Depan',
                    hintText: 'Tulis Nama Depan Anda',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
