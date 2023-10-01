import 'package:flutter/material.dart';
import 'package:navigation_async/controller/info_controller.dart';
import 'package:provider/provider.dart';

class ShowProvView extends StatelessWidget {
  const ShowProvView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${Provider.of<InfoController>(context).userName}'),
      ),
      body: const Column(
        children: [
          Text('Your gender is gender'),
          Text(
            'Your certification is certifecation',
          ),
        ],
      ),
    );
  }
}
