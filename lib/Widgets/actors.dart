import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import 'cache_network_image.dart';

class Actors extends StatelessWidget {
  const Actors({Key? key, required this.imageUrl, required this.title})
      : super(key: key);
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(children: [
                SizedBox(
                  width: kSP150x,
                  height: kSP150x,
                  child: CacheNetworkImageWidget(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kSP120x),
                  child: SizedBox(
                      width: kSP100x,
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: kFontSize14x,
                            color: kWhiteColor),
                      )),
                ),
                const SizedBox(height: kSP5x),
              ])
            ]),
      );
}
