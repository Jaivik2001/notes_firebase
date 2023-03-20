import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notes_firebase/global.dart';

class CollectionHelper {
  static CollectionHelper instence = CollectionHelper();
  CollectionReference notes = FirebaseFirestore.instance.collection('notes');

  insert() async {
    return notes.add({
      "title": Global.title,
      "des": Global.description
    });
  }
}