import 'package:flutter/material.dart';

class SelecInput extends StatelessWidget {
  final InputType selection;
  final String? formText;
  FloatingLabelBehavior? _options;
  SelecInput({
    Key? key,
    required this.selection,
    this.formText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (formText != null) {
      _options = FloatingLabelBehavior.always;
    } else {
      _options = FloatingLabelBehavior.auto;
    }
    switch (selection) {
      case InputType.Email:
        return TextField(
          decoration: InputDecoration(
            labelText: "Email Address",
            floatingLabelBehavior: _options,
            hintText: formText,
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
            border: const OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress,
        );
      case InputType.Password:
        return const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
        );
      case InputType.FullName:
        return TextField(
          decoration: InputDecoration(
            labelText: "Full Name",
            floatingLabelBehavior: _options,
            hintText: formText,
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.name,
        );

      // ignore: dead_code
      case InputType.MobileNum:
        return TextField(
          decoration: InputDecoration(
            labelText: "Mobile phone",
            floatingLabelBehavior: _options,
            hintText: formText,
            hintStyle: const TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.phone,
        );

      case InputType.Title:
        return TextField(
          decoration: InputDecoration(
            labelText: "Title",
            floatingLabelBehavior: _options,
            hintText: formText,
            hintStyle: const TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.text,
        );

      case InputType.Price:
        // TODO: Handle this case.
        return TextField(
          decoration: InputDecoration(
            labelText: "Price",
            floatingLabelBehavior: _options,
            hintText: formText,
            hintStyle: const TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.text,
        );

      case InputType.Description:
        return TextField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: "Description",
            floatingLabelBehavior: _options,
            hintText: formText,
            hintStyle: const TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.text,
        );
      default:
        return Text("invalid selection");
    }
  }
}

enum InputType {
  Email,
  Password,
  FullName,
  MobileNum,
  Title,
  Price,
  Description
}
