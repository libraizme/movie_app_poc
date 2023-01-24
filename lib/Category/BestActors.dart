import 'package:flutter/material.dart';
import '../Const/dimens.dart';
import '../Widgets/actors.dart';

class BestActors extends StatelessWidget{
  const BestActors({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Actors(imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Jeremy_Renner_by_Gage_Skidmore.jpg/1200px-Jeremy_Renner_by_Gage_Skidmore.jpg',
          title: 'Actor Name',),
        SizedBox(
          width: kSP10x,
        ),
        Actors(
          imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Brad_Pitt_2019_by_Glenn_Francis.jpg/1200px-Brad_Pitt_2019_by_Glenn_Francis.jpg',
          title: 'Actor Name',
        ),
        SizedBox(
          width: kSP10x,
        ),
        Actors(
          imageUrl:
          'https://www.biography.com/.image/t_share/MTU0ODUwMjQ0NjIwNzI0MDAx/chris-hemsworth-poses-during-a-photo-call-for-thor-ragnarok-on-october-15-2017-in-sydney-australia-photo-by-mark-metcalfe_getty-images-for-disney-square.jpg',
          title: 'Actor Name',
        ),
        SizedBox(
          width: kSP10x,
        ),
        Actors(imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/3/3c/Tom_Holland_by_Gage_Skidmore.jpg',
          title: 'Actor Name',),
        SizedBox(
          width: kSP10x,
        ),
        Actors(
          imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg/1200px-Robert_Downey_Jr_2014_Comic_Con_%28cropped%29.jpg',
          title: 'Actor Name',
        ),
        SizedBox(
          width: kSP10x,
        ),
        Actors(
          imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/b/b8/Chiwetel_Ejiofor_by_Gage_Skidmore.jpg',
          title: 'Actor Name',
        ),
        SizedBox(
          width: kSP10x,
        ),
      ],
    ),
  );

}