import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                  value: true,
                  title: const Text('DarkMode'),
                  onChanged: (value) {}),
              const Divider(),
              RadioListTile<int>(
                  title: Text('Maculino'),
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {}),
              const Divider(),
              RadioListTile<int>(
                  title: Text('Femenino'),
                  value: 2,
                  groupValue: 1,
                  onChanged: (value) {}),
              TextFormField(
                initialValue: 'Ricardo',
                decoration: const InputDecoration(
                    labelText: 'Nombre', helperText: 'Nombre del usuario'),
              )
            ],
          )),
    );
  }
}
