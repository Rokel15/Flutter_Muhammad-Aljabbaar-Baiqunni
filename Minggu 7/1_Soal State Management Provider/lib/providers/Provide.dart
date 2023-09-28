import 'package:flutter/cupertino.dart';
import '../data/ContactData.dart';
import '../models/ContactModel.dart';
import 'package:flutter/material.dart';

class Provide with ChangeNotifier{
  void addContact(name, number){
    contacts.add(ContactModel(name: name, number: number));
    notifyListeners();
  }

  void deleteContact(index){
    contacts.removeAt(index);
    notifyListeners();
  }
}