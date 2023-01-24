import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import '../Pages/movie_info.dart';
import 'cache_network_image.dart';

class MovieCard extends StatelessWidget{
  const MovieCard({Key? key,required this.imageUrl,required this.title,required this.rating}) : super(key: key);
  final String imageUrl;
  final String title;
  final double rating;

  @override
  Widget build(BuildContext context) => SizedBox(
    child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return const MovieInfo();
                  })
              );
            },
            child: SizedBox(
              width: kSP100x,
              height: kSP150x,
              child: CacheNetworkImageWidget(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 3),
          SizedBox(
              width: kSP100x,
              child: Text(title,style:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: kFontSize14x, color: kWhiteColor),)),
          const SizedBox(height: 4),
          Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rating.toString(),
                  style: const TextStyle(
                      fontSize: kFontSize14x,
                      fontWeight: FontWeight.bold,
                    color: kWhiteColor,
                  ),
                ),
                const SizedBox(
                  width: kSP5x,
                ),
                RatingBar.builder(
                  glow: true,
                  glowRadius: 2,
                  itemSize: 15,
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(
                      horizontal: 0.0),
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: kAmberColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ])
        ]),
  );

}