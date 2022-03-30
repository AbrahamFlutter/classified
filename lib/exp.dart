import 'package:flutter/material.dart';
//task 1
/*
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
*/
//task 2
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 7, 132, 248),
          child: Center(
              child: Image.network(
                "https://imagenes.elpais.com/resizer/n1JjEgForXqYNdLfRmUpAylx5H8=/1960x1470/cloudfront-eu-central-1.images.arcpublishing.com/prisa/OQYPMMCARHHQ7O2FZ4Q3PSW6WE.jpg",
                width: 200,
              ),
          ),
        ),
      ),
    ),
  );
}
*/
//task3
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 7, 132, 248),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://imagenes.elpais.com/resizer/n1JjEgForXqYNdLfRmUpAylx5H8=/1960x1470/cloudfront-eu-central-1.images.arcpublishing.com/prisa/OQYPMMCARHHQ7O2FZ4Q3PSW6WE.jpg",
                width: 200,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
*/
//task 4

/*


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                primary: Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Text("Click"),
            ),
          ),
        ),
      ),
    ),
  );
}

*/
//task 5

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Color.fromARGB(255, 78, 3, 255),
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Text("Click"),
            ),
          ),
        ),
      ),
    ),
  );
}
*/

//task 6
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Color.fromARGB(255, 78, 3, 255),
                side: BorderSide(),
                padding: const EdgeInsets.all(16.0),
              ),
              onPressed: () {},
              child: Text("Click"),
            ),
          ),
        ),
      ),
    ),
  );
}
*/
//task7
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ac_unit_rounded),
              label: Text(""),
            ),
          ),
        ),
      ),
    ),
  );
}
*/
//task 8
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(71, 224, 22, 89),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://ii.ct-stc.com/2/logos/empresas/2018/05/28/ksquare-labs-sa-de-cv-31D722171E816499222821581thumbnail.jpg",
                width: 200,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: () {},
                child: Text("itk.com", style: TextStyle(fontSize: 40)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
*/
//task 9
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(71, 224, 22, 89),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    "https://ii.ct-stc.com/2/logos/empresas/2018/05/28/ksquare-labs-sa-de-cv-31D722171E816499222821581thumbnail.jpg",
                    width: 200),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: () {},
                child: Text("itk.com", style: TextStyle(fontSize: 40)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
