import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import '../Const/image.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) => CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
        ),
        items: movieURL.map((movies) => Center(
                child: Stack(children: [
                  Image.network(
                    movies,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  const Center(
                    child: Material(
                      color: kTransColor,
                      shape: CircleBorder(side: BorderSide(color: Colors.white)),
                      child: Icon(
                        Icons.play_arrow,
                        size: kBtnSize40x,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: kSP160x),
                    child: Text(
                      "Movie Title",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: kFontSize20x,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]),
              ),
            ).toList(),
      );
}
