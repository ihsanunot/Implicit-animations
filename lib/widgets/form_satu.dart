import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Form Sample')),
        body: const FormSatu(),
      ),
    );
  }
}

class FormSatu extends StatefulWidget {
  const FormSatu({super.key});

  @override
  State<FormSatu> createState() => _FormState();
}

class _FormState extends State<FormSatu> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Masukan email anda',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'please enter bro';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          )
        ],
      ),
    );
  }
}
