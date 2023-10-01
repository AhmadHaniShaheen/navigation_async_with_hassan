import 'package:flutter/material.dart';

class ShowNamedView extends StatelessWidget {

  const ShowNamedView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   final argurment= ModalRoute.of(context)!.settings.arguments as List;
   final userName= argurment[0];
   final userGender= argurment[1];
   final userCertification= argurment[2];
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $userName'),
      ),
      body:  Column(
        children: [
          Text('Your gender is $userGender'),
          Text(
            'Your certification is $userCertification',
          ),
        ],
      ),
    );
  }
}
