import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(
                top: 400,
              ),
              decoration: BoxDecoration(
                color: bgColor2,
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 160,
                    ),
                    Text(
                      'Nuestro Tour',
                      style: textStyle2,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Este tour dura un día completo y es perfecto para los que quieran ver el espectacular paisaje colorido alrededor de la montaña Ausangate. Durante el recorrido, disfrutarás de vistas sorprendentes y encuentros con alpacas, llamas y vicuñas salvajes. Cuando llegues a la cima (a 5.010 metros), dispondrás de tiempo libre para descansar y, si hace buen tiempo, contemplar las vistas y sacar fotos. Entonces tendrás la opción de explorar el mirador del valle Rojo, así como de los Andes y los glaciares cercanos.',
                      style: textStyle4,
                    )
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 310),
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 230,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: ListView(children: [
                const SizedBox(
                  height: 110,
                ),
                Row(
                  children: [
                    Text(
                      "Montaña 7 Colores",
                      style: textStyle1.copyWith(color: mainColor),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Center(
                            child: Image.asset('assets/star.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Text(
                          '4.4',
                          style: textStyle2,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Center(
                            child: Image.asset('assets/nube.png'),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '2ºC',
                          style: textStyle2,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Center(
                            child: Image.asset('assets/tiempo.png'),
                          ),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          'Full day',
                          style: textStyle2,
                        )
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ),
          SafeArea(
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/montana.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),
          ),
          SafeArea(
              child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 30, left: 30),
              // color: mainCOlor,
              child: Image.asset('assets/back.png'),
            ),
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              color: bgColor,
              height: 68,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tours desde",
                        style: textStyle4,
                      ),
                      Text(
                        "S/. 119.00 ",
                        style: textStyle2.copyWith(color: mainColor),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Reservar",
                        style: textStyle2,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
