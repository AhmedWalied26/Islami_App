import 'package:flutter/material.dart';
import 'package:islami_app/models/suras_model.dart';

abstract class MostRecent {
  static ValueNotifier<List<SurasModel>> recent = ValueNotifier([]);
}
