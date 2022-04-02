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
              "https://media-exp1.licdn.com/dms/image/C4D03AQGtAetUGzvj_Q/profile-displayphoto-shrink_200_200/0/1549850502850?e=1653523200&v=beta&t=kGzPrxz3623IGqmPjiolV8P7hRbGm2X9Nn1yZ4Ahp4k",
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
                "https://media-exp1.licdn.com/dms/image/C4D03AQGtAetUGzvj_Q/profile-displayphoto-shrink_200_200/0/1549850502850?e=1653523200&v=beta&t=kGzPrxz3623IGqmPjiolV8P7hRbGm2X9Nn1yZ4Ahp4k",
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
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/images/k.jpg", width: 200),
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
//task 10
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(192, 7, 173, 43),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/tomato.jpg",
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.all(15.0),
                ),
                onPressed: () {},
                child: Text("Continue with Google",
                    style: TextStyle(fontSize: 25)),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 122, 10),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: const EdgeInsets.all(16.0),
                ),
                onPressed: () {},
                child: Text("Continue With Facebook",
                    style: TextStyle(fontSize: 25)),
              ),
              Text("consult our terms and services\n",
                  style: TextStyle(fontSize: 16))
            ],
          ),
        ),
      ),
    ),
  );
}
*/
//task 11
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color.fromARGB(255, 212, 212, 212),
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    "assets/images/k.jpg",
                  ),
                ),
                Text(
                  "itk.com",
                  style: TextStyle(fontSize: 25),
                ),
                Icon(Icons.model_training),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
*/
//task 12
/*

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  fixedSize: Size.fromWidth(320)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/google.png",
                    ),
                  ),
                  Text(
                    "Continue with Google",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
*/
//task 14
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //main column
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //Row 1
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //container1
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/facebook.png",
                              width: 40,
                            ),
                            Text("Facebook"),
                          ]),
                    ),
                    //Container 2
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/twitter.png",
                              width: 40,
                            ),
                            Text("Twitter"),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                //Row 2
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //container3
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/instagram.png",
                              width: 40,
                            ),
                            Text("Instagram"),
                          ]),
                    ),
                    //Container 4
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/youtube.png",
                              width: 40,
                            ),
                            Text("YouTube"),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                //Row 3
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //container5
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/spotify.png",
                              width: 40,
                            ),
                            Text("Spotify"),
                          ]),
                    ),
                    //Container 6
                    Container(
                      color: Color.fromARGB(255, 0, 255, 200),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/pinterest.png",
                              width: 40,
                            ),
                            Text("Pinterest"),
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
*/
// task 15
/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/tomato2.jpg",
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Red Tomato",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("healthy"),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.apple_sharp,
                      size: 60,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  """Es cierto, soy muy nervioso. Tanto, que a veces pueda parecer que me siento gobernado por los impulsos. Pero no estoy loco. Loco, no, porque soy capaz de razonar. También de escucharlo todo, de oír cosas que nadie consigue oír. Y eso es porque mis sentidos se han agudizado. Y para demostrarles que no estoy loco, les contaré ahora, más tranquilo, mi relato:

Llevaba tiempo observando al viejo. Le quería mucho, deben creerme, pero me molestaba, me irritaba, y no podía frenar ese sentimiento. Era una tortura, y todo, por culpa de ese ojo, un ojo velado con el que miraba y no veía, que me clavaba y me ponía nervioso. Un ojo como de buitre, azulado, frío. ¡Fue por culpa de ese miserable ojo! Deben creerme. Yo no quería nada del viejo. Ni su dinero. Ni él me insultó nunca. Fue por culpa de ese maldito ojo, que me trastocaba por completo.
                  """,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(" Share ", style: TextStyle(fontSize: 25)),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
*/