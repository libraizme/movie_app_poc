import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import 'cache_network_image.dart';

class ShowCase extends StatelessWidget{
  const ShowCase({Key? key,required this.imageUrl,required this.title}) : super(key: key);
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) => SizedBox(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [SizedBox(
              width: 200,
              height: 200,
              child: CacheNetworkImageWidget(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
              ),
            ),
              const Padding(
                padding: EdgeInsets.only(top: 80,left: 80),
                child: Material(
                  color: Colors.transparent,
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  child: Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
          // const SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: SizedBox(
                width: 100,
                child: Text(title,style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: kFontSize14x, color: kWhiteColor),)),
          ),
          const SizedBox(height: 4),
  ])
        ]),
  );

}