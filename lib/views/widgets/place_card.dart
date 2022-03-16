import 'package:flutter/material.dart';
import 'package:travel_app/models/place.dart';
import 'package:travel_app/theme.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  final int index;
  PlaceCard({required this.place, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 120,
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage(place.imageUrl), fit: BoxFit.cover)),
              ),
            ],
          ),
          Container(
            width: 120,
            height: 50,
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Center(
              child: Text(
                place.city,
                style: textStyle3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
