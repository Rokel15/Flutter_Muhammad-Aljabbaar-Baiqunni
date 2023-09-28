import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormInput extends StatefulWidget {
  // static String input = '';
  TextEditingController controller;
  String labelText;
  String hintText;
  bool inputNumberOnly;
  int function_number;
  Function(String) onChanged;

  FormInput({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.inputNumberOnly,
    required this.function_number,
    required this.onChanged,
  });

  @override
  State<FormInput> createState() => _FormInputState(
      controller: controller,
      labelText: labelText,
      hintText: hintText,
      inputNumberOnly: inputNumberOnly,
      function_number: function_number,
      onChanged: onChanged
  );
}

class _FormInputState extends State<FormInput> {
  // String input;
  TextEditingController controller;
  String labelText;
  String hintText;
  bool inputNumberOnly;
  int function_number;
  Function(String) onChanged;

  _FormInputState({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.inputNumberOnly,
    required this.function_number,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        controller: controller,
        keyboardType:
        inputNumberOnly == true ? TextInputType.number : TextInputType.text,
        style: TextStyle(
          color: Colors.black
        ),
        decoration: InputDecoration(
          filled: true,
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4), topLeft: Radius.circular(4))),
          fillColor: Color(0xffE7E0EC),
        ),

        inputFormatters: inputNumberOnly == true ?
        <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))] :
        <TextInputFormatter>[],
        onChanged: onChanged,
      ),
    );
  }
}
