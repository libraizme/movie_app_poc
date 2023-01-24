import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import '../Widgets/about.dart';
import '../Widgets/actors.dart';
import '../Widgets/easy_text_widget.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            SliverAppBar(
              actions: const [
                Icon(
                  Icons.search,
                  size: kSP30x,
                ),
                SizedBox(
                  width: kSP10x,
                )
              ],
              floating: true,
              backgroundColor: Colors.transparent,
              expandedHeight: kSP300x,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Movie Info"),
                background: Image.network(
                  "https://image.tmdb.org/t/p/original/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          body: Container(
            padding: const EdgeInsets.only(left: kSP10x, top: kSP10x),
            color: kSecondaryColor,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.access_alarm,
                        color: Colors.amber,
                      ),
                      const SizedBox(width: kSP10x),
                      const Text(
                        "3hours 12mins",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(width: kSP10x),
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kSP25x),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Science',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                      const SizedBox(width: kSP5x),
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kSP25x),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Action',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                      const SizedBox(width: kSP5x),
                      TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kSP25x),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Adventure',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                    ],
                  ),
                  const Icon(Icons.heart_broken),
                  const EasyTextWidget(text: "Storylines"),
                  const SizedBox(
                    height: kSP5x,
                  ),
                  const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(
                    height: kSP10x,
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.amber,
                            fixedSize: const Size(kSP170x, kSP50x),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kSP25x),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.play_circle),
                          label: const Text(
                            'PLAY TRAILER',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                      const SizedBox(width: kSP10x),
                      ElevatedButton.icon(
                          style: TextButton.styleFrom(
                            backgroundColor: kGreyColor,
                            fixedSize: const Size(kSP170x, kSP50x),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kSP25x),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          label: const Text(
                            'RATE MOVIE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: kSP20x,bottom: kSP10x),
                    width: double.infinity,
                    height: kSP20x,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EasyTextWidget(text: "ACTORS"),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: SingleChildScrollView(
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
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: kSP10x,bottom: kSP10x),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EasyTextWidget(text: 'ABOUT FILM'),
                        SizedBox(height: kSP10x),
                        SizedBox(
                            child: About()
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: kSP10x,bottom: kSP10x,right: kSP10x),
                    width: double.infinity,
                    height: kSP20x,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EasyTextWidget(text: "CREATORS"),
                        EasyTextWidget(text: "MORE CREATORS")
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: kSP10x,),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Actors(imageUrl:
                          'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
                            title: 'Creator Name',),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
                            title: 'Creator Name',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
                            title: 'Creator Name',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(imageUrl:
                          'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
                            title: 'Creator Name',),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
                            title: 'Creator Name',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                          Actors(
                            imageUrl:
                            'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
                            title: 'Creator Name',
                          ),
                          SizedBox(
                            width: kSP10x,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
