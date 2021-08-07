// import 'package:flutter/cupertino.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class DairyEntry {
  int id = 0;
  String title;
  DateTime date;
  String memories;
  @Transient() // Make this field ignored, not stored in the database.
  int notPersisted;

  DairyEntry({this.title, DateTime date, this.memories})
      : date = date ?? DateTime.now();
}
