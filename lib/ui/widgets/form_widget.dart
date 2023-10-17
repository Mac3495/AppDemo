import 'package:flutter/material.dart';
import 'package:myapp/ui/widgets/form_controller.dart';

class FormWidget extends StatelessWidget {
  final FormController controller;
  const FormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, snapshot) {
                return Text(
                  controller.result,
                  style: const TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w700
                  ),
                );
              }
            ),
            TextFormField(
              controller: controller.nameController,
              validator: (value) => controller.validator(value),
            ),
            TextFormField(
              controller: controller.passwordController,
              validator: (value) => controller.validator(value),
            ),
            ElevatedButton(
              onPressed: () => controller.sumar(), 
              child: const Text('Suma')
            )
          ],
        ),
      ),
    );
  }
}
