import 'package:flutter/material.dart';
import '../Const/dimens.dart';
import '../Const/tabs.dart';
import 'movie_card.dart';

class TabTest extends StatefulWidget{
  const TabTest({super.key});

  @override
  State<TabTest> createState() => _TabTestState();
}

class _TabTestState extends State<TabTest>{
  String name=tabsName.first;
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: tabsName.length,
      child: Column(
        children: [
          TabBar(
              tabs: tabsName.map((name) => Tab(
                text: name,
              )).toList(),
              onTap: (index) {
                setState(() {
                  name=tabsName.elementAt(index);
                });
              },
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
            ),
          const SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MovieCard(
                  imageUrl:
                  'https://image.tmdb.org/t/p/original/1BIoJGKbXjdFDAqUEiA2VHqkK1Z.jpg',
                  title: 'MovieTitle',
                  rating: 3.4,
                ),
                SizedBox(
                  width: kSP10x,
                ),
                MovieCard(
                  imageUrl:
                  'https://pbs.twimg.com/media/DyomVLqX0AA2iOV?format=jpg',
                  title: 'MovieTitle',
                  rating: 5.1,
                ),
                SizedBox(
                  width: kSP10x,
                ),
                MovieCard(
                  imageUrl:
                  'https://m.media-amazon.com/images/I/71krfsS5kNL.jpg',
                  title: 'MovieTitle',
                  rating: 2.7,
                ),
                SizedBox(
                  width: kSP10x,
                ),
                MovieCard(
                  imageUrl:
                  'https://m.media-amazon.com/images/I/71gyLVWIfIL.jpg',
                  title: 'MovieTitle',
                  rating: 1.9,
                ),
                SizedBox(
                  width: kSP10x,
                ),
                MovieCard(
                  imageUrl:
                  'https://m.media-amazon.com/images/I/61ikONHVOAL.jpg',
                  title: 'MovieTitle',
                  rating: 4.5,
                ),
                SizedBox(
                  width: kSP10x,
                ),
                MovieCard(
                  imageUrl:
                  'https://m.media-amazon.com/images/I/51V0Mw23gmL._AC_.jpg',
                  title: 'MovieTitle',
                  rating: 2.5,
                ),
                SizedBox(
                  width: kSP10x,
                ),
                MovieCard(
                  imageUrl:
                  'https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg',
                  title: 'MovieTitle',
                  rating: 5.3,
                ),
                SizedBox(
                  width: kSP10x,
                ),
              ],
            ),
          ),
        ],
      ),
  );

}