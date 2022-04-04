import 'package:flutter/material.dart';

//task 20
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 260,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(221, 117, 117, 117), width: 2),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 260,
                        child: Image.asset(
                          "assets/images/violin.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.favorite_border,
                              color: Color.fromARGB(225, 255, 0, 76), size: 50),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 255, 0, 76),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            child: Text(
                              "10% off",
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 1.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "White violin",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text("Best offer"),
                          ],
                        ),
                      ),
                      Text(
                        "\$5000",
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1.5,
                          color: Color.fromARGB(225, 255, 0, 76),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    """Es cierto, soy muy nervioso. Tanto, que a veces pueda parecer que me siento gobernado por los impulsos. Pero no estoy loco. Loco, no, porque soy capaz de razonar. También de escucharlo todo, de oír cosas que nadie consigue oír. Y eso es porque mis sentidos se han agudizado. Y para demostrarles que no estoy loco, les contaré ahora, más tranquilo, mi relato:

Llevaba tiempo observando al viejo. Le quería mucho, deben creerme, pero me molestaba, me irritaba, y no podía frenar ese sentimiento. Era una tortura, y todo, por culpa de ese ojo, un ojo velado con el que miraba y no veía, que me clavaba y me ponía nervioso. Un ojo como de buitre, azulado, frío. ¡Fue por culpa de ese miserable ojo! Deben creerme. Yo no quería nada del viejo. Ni su dinero. Ni él me insultó nunca.
                  """,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(225, 255, 0, 76),
                          ),
                          child: Text(" Add Cart ",
                              style: TextStyle(fontSize: 25)),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shadowColor: Color.fromARGB(225, 255, 0, 76)),
                          child: Text(
                            " Buy Now  ",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(225, 255, 0, 76),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
