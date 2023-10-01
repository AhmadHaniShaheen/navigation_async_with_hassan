import 'package:flutter/material.dart';
import 'package:navigation_async/controller/info_controller.dart';
import 'package:navigation_async/views/nav_with_provider/show_prov_view.dart';
import 'package:provider/provider.dart';

class InfoProvView extends StatefulWidget {
  const InfoProvView({super.key});

  @override
  State<InfoProvView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoProvView> {
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
              Provider.of<InfoController>(context, listen: false)
                  .changeName(controller.text);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const ShowProvView();
              }));
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
