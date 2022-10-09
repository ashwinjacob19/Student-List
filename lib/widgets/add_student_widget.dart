import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/db/functions/db_functions.dart';
import 'package:flutter_application_2/db/model/data_model.dart';

class AddStudentwidget extends StatelessWidget {
  AddStudentwidget({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Name'),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Age'),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              onAddStudentButtonPressed();
            },
            icon: const Icon(Icons.add),
            label: const Text('Add Student'),
          )
        ],
      ),
    );
  }

  Future<void> onAddStudentButtonPressed() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();

    if (_name.isEmpty || _age.isEmpty) {
      return;
    }

    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
