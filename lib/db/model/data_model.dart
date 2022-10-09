import 'package:flutter_application_2/widgets/HomeScreen.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  // @HiveField(0)
  // int? id;

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String age;

  StudentModel({required this.name, required this.age});
}
