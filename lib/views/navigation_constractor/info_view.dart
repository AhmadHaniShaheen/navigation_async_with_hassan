import 'package:flutter/material.dart';
import 'package:navigation_async/views/navigation_constractor/show_view.dart';

class InfoView extends StatefulWidget {
  const InfoView({super.key});

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  late TextEditingController controller;
  String? gender = '';
  String? certifecation = '';

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Info View')),
      body: ListView(
        children: [
          const Text('Your Name'),
          TextFormField(
            controller: controller,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text('Your Gender'),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  value: 'mail',
                  groupValue: gender,
                  title: const Text("Male"),
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: RadioListTile(
                  value: 'femail',
                  groupValue: gender,
                  title: const Text('Female'),
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text('Your Certification'),
          RadioListTile(
            value: 'debluma',
            groupValue: certifecation,
            title: const Text("Debluma"),
            onChanged: (value) {
              setState(() {
                certifecation = value;
              });
            },
          ),
          RadioListTile(
            value: 'baca',
            groupValue: certifecation,
            title: const Text('Bacalourious'),
            onChanged: (value) {
              setState(() {
                certifecation = value;
              });
            },
          ),
          RadioListTile(
            value: 'phd',
            groupValue: certifecation,
            title: const Text("PHD"),
            onChanged: (value) {
              setState(() {
                certifecation = value;
              });
            },
          ),
          RadioListTile(
            value: 'master',
            groupValue: certifecation,
            title: const Text('Master'),
            onChanged: (value) {
              setState(() {
                certifecation = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return  ShowView(
                  userName: controller.text,
                  certifecation: certifecation,
                  gender: gender,

                );
              }));
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
