import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      appBar: AppBar(title: const Text('Home')),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('isDarkMode;'),
        Divider(),
        Text('Género: '),
        Divider(),
        Text('Nombre de usuario'),
        Divider(),
      ]),
    );
  }
}
