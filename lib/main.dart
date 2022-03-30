import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 97, 185, 14),
          child: const Center(
            child: Text(
              "Hello Flutter!",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
//create new branch

//git branch branch_name
//git checkout  branch_name 
//git add . 
//git commit -m "branch_name"
//git push --set-upstream origin branch_name