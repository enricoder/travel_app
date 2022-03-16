import 'package:flutter/material.dart';
import 'package:travel_app/models/place.dart';
import 'package:travel_app/theme.dart';

class Event extends StatelessWidget {
  final Place place;
  Event(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 230,
      padding: EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
          // color: mainCOlor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage(place.imageUrl), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${place.event}',
            style: textStyle1.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
