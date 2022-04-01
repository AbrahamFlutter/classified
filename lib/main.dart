import 'package:flutter/material.dart';

//task 13
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
