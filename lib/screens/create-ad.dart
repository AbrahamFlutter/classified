import 'package:flutter/material.dart';

class CreateAd extends StatelessWidget {
  const CreateAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Create Ad"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: ListView(children: [
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.only(left: 90, right: 90),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                  padding: EdgeInsets.all(20.0)),
              onPressed: () {},
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.add_a_photo_outlined,
                      size: 80,
                      color: Colors.black,
                    ),
                    Text(
                      "Tap to upload",
                      style: TextStyle(
                          color: Color.fromARGB(255, 116, 116, 116),
                          fontSize: 20),
                    )
                  ]),
            ),
          ),
          Container(
            height: 500,
            margin: EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Title",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Price",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Mobile phone",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: "Description",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Submit Ad", style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(225, 255, 102, 14),
                      ),
                    ),
                  ),
                ]),
          )
        ]),
      ),
    );
  }
}
