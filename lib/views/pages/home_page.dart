import 'package:flutter/material.dart';
import 'package:travel_app/models/place.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/views/pages/detail_page.dart';
import 'package:travel_app/views/widgets/event.dart';
import 'package:travel_app/views/widgets/place_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'Todo',
      'Glampers',
      'Millenials',
      'Negocios',
      'Adults only',
      'Motion'
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/user.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hola Kike,',
                          style: textStyle2,
                        ),
                        Text(
                          'Buen dia',
                          style: textStyle4.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.shopping_bag,
                  color: mainColor,
                  size: 35.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/logooficial.png'),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, left: 30),
            child: Text(
              "Explora . Disfruta . Vive ",
              style: textStyle1,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: 30,
              margin: const EdgeInsets.only(top: 25, left: 30),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Text(
                            titles[index],
                            style: textStyle4.copyWith(
                                color: (index == 0) ? mainColor : white),
                          ),
                          (index == 0)
                              ? Container(
                                  width: 20,
                                  height: 2,
                                  decoration: BoxDecoration(
                                      color: mainColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                )
                              : SizedBox()
                        ],
                      ),
                    );
                  })),
          Container(
            margin: EdgeInsets.only(top: 36, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DESTINOS POPULARES",
                  style: textStyle2,
                ),
                Text(
                  "Ver todo",
                  style: textStyle4,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 20),
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage()));
                      },
                      child: PlaceCard(
                        place: places[index],
                        index: index,
                      ),
                    ),
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CATEGORÍAS',
                  style: textStyle2,
                ),
                Text(
                  'Ver todo',
                  style: textStyle4,
                )
              ],
            ),
          ),
          Container(
            height: 210,
            width: 230,
            margin: const EdgeInsets.only(top: 40, right: 30, left: 30),
            child: ListView.builder(
                itemCount: events.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Event(events[index]),
                  );
                }),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
