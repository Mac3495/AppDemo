import 'package:flutter/material.dart';

class FormController extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RegExp numberRegex = RegExp(r"^\d+$");

  final formKey = GlobalKey<FormState>();

  String result = '';

  String? validator(String? value) {
    if (value!.isNotEmpty && numberRegex.hasMatch(value)) {
      return null;
    } else {
      return 'ESTO NO ES UN NUMERO';
    }
  }

  void sumar() {
    if (formKey.currentState!.validate()) {
      final name = int.parse(nameController.text);
      final pass = int.parse(passwordController.text);
      result = '${name + pass}';
      notifyListeners();
      nameController.clear();
      passwordController.clear();
    }
  }
}
