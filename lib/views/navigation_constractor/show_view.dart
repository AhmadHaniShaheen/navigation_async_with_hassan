import 'package:flutter/material.dart';

class ShowView extends StatelessWidget {
  final String userName;
  final String? certifecation;
  final String? gender;

  const ShowView({
    super.key,
    required this.userName,
    required this.certifecation,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $userName'),
      ),
      body: Column(
        children: [
          Text('Your gender is $gender'),
          Text(
            'Your certification is $certifecation',
          ),
        ],
      ),
    );
  }
}
