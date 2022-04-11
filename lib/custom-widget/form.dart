import 'package:flutter/material.dart';

class SelecInput extends StatelessWidget {
  final InputType selection;
  final String? formText;
  FloatingLabelBehavior? options;
  SelecInput({Key? key, required this.selection, this.formText, this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (formText != null) {
      options = FloatingLabelBehavior.always;
    } else {
      options = FloatingLabelBehavior.auto;
    }
    switch (selection) {
      case InputType.Email:
        return TextField(
          decoration: InputDecoration(
            labelText: "Email Address",
            floatingLabelBehavior: options,
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
            floatingLabelBehavior: options,
            hintText: formText,
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.name,
        );

      // ignore: dead_code
      case InputType.MobileNum:
        return TextField(
          decoration: InputDecoration(
            labelText: "Mobile phone",
            floatingLabelBehavior: options,
            hintText: formText,
            hintStyle: const TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.phone,
        );

      case InputType.Title:
        return const TextField(
          decoration: InputDecoration(
            labelText: "Title",
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.text,
        );

      case InputType.Price:
        // TODO: Handle this case.
        return const TextField(
          decoration: InputDecoration(
            labelText: "Price",
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.text,
        );

      case InputType.Description:
        return const TextField(
          maxLines: 5,
          decoration: InputDecoration(
            labelText: "Description",
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
