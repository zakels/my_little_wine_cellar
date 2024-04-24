import 'package:flutter/material.dart';

class WineCard extends StatelessWidget {
  final String nameVintage;
  final String winery;
  final double rating;
  final String regionCountry;
  final String comment;

  const WineCard({
    required this.nameVintage,
    required this.winery,
    required this.rating,
    required this.regionCountry,
    required this.comment,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 5.0,
            spreadRadius: 0.0,
            offset: const Offset(0,4),
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_enhance,
                      size: 100,
                    ),
                  ],
                )
              ),
              SizedBox(width: 15.0,),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(winery),
                    Text(
                      nameVintage,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      regionCountry,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rating.toString() + "/5",
                    style: TextStyle(
                      color: Color(0xff971C23)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
