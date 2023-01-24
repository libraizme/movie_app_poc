import 'package:flutter/material.dart';
import '../Const/dimens.dart';
import '../Widgets/showcase.dart';

class MovieShowcase extends StatelessWidget{
  const MovieShowcase({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ShowCase(imageUrl:
        'https://m.media-amazon.com/images/M/MV5BZmQyYjlhNmEtYjQxNS00NTQ0LWFlNDctZDVlZTk2YTYyZGNlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_FMjpg_UX1000_.jpg',
          title: 'MovieTitle',),
        SizedBox(
          width: kSP10x,
        ),
        ShowCase(
          imageUrl:
          'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeEf-vzXJoIwog-Z2150w298bjqsAbyWbiMIrP5jN3qOrJUeWzlRyhjvY9br4Tfg3aIwcuDWMGIGpUXL1wiaVjv8ebmdAM0ILyfm8cgWLu3exflUD4FU45ChVKq6D0c20TfHgY02UX1E6rBcWm4wTiiw.jpg?r=943',
          title: 'MovieTitle',
        ),
        SizedBox(
          width: kSP10x,
        ),
        ShowCase(
          imageUrl:
          'https://images.ctfassets.net/4cd45et68cgf/2mUIgmsgzIx0sFFOGXy3r4/d371141bf033724346d5afe096ac7363/EN_IN__TheFameGame_KA2_Main_Square_40x40_sRGB.jpg?w=2560',
          title: 'MovieTitle',
        ),
        SizedBox(
          width: kSP10x,
        ),
      ],
    ),
  );

}