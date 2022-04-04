import 'package:flutter/material.dart';

//task 18

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 168, 0, 28),
            centerTitle: true,
            title: Text("Contact form")),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Mobile",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  Text("Gender"),
                  RadioListTile(
                      title: Text("Male"),
                      value: "man",
                      groupValue: null,
                      onChanged: null),
                  RadioListTile(
                      title: Text("Female"),
                      value: "woman",
                      groupValue: null,
                      onChanged: null),
                  Container(
                    height: 100,
                  ),
                  CheckboxListTile(
                    checkColor: Color.fromARGB(255, 255, 31, 31),
                    // fillColor: MaterialStateProperty.resolveWith(Colors.red),
                    value: false,
                    onChanged: (bool? value) {},
                    title: Text("By signing up, I accept terms and conditions"),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 168, 0, 28),
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          fixedSize: Size.fromWidth(500)),
                      onPressed: () {},
                      child: Text("Submit"))
                ]),
          ),
        ),
      ),
    ),
  );
}
