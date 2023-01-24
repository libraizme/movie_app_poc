import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';

class ShowTimes extends StatelessWidget{
  const ShowTimes({super.key});

  @override
  Widget build(BuildContext context) => Stack(
    children: [
      Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(left: kSP20x, top: kSP20x),
                width: kSP200x,
                child: const Text(
                  'Check Movie Showtimes',
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: kFontSize25x,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                margin: const EdgeInsets.only(left: kSP20x, top: kSP30x),
                child: const Text(
                  'See More',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kAmberColor,
                      decoration: TextDecoration.underline),
                )),
          ]),
      Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: kSP200x, top: kSP50x),
              width: kSP100x,
              child: const Icon(
                Icons.location_on,
                color: kWhiteColor,
                size: kFontSize50x,
              ))
        ],
      )
    ],
  );

}