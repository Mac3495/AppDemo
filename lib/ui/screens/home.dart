import 'package:flutter/material.dart';
import 'package:myapp/ui/widgets/form_controller.dart';
import 'package:myapp/ui/widgets/form_widget.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final formController = FormController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('El chichi se la come'),
          backgroundColor: Colors.cyan,
        ),
        body: FormWidget(controller: formController)
    );
  }
}
