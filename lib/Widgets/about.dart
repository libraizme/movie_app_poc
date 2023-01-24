import 'package:flutter/material.dart';
import '../Const/colors.dart';
import '../Const/dimens.dart';
import 'easy_text_widget.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) => Stack(children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            EasyTextWidget(text: 'Original Title'),
            SizedBox(height: kSP10x,),
            EasyTextWidget(text: 'Type'),
            SizedBox(height: kSP10x,),
            EasyTextWidget(text: 'Production'),
            SizedBox(height: kSP10x,),
            EasyTextWidget(text: 'Premiere'),
            SizedBox(height: kSP10x,),
            EasyTextWidget(text: 'Description'),
            SizedBox(height: kSP10x,),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: kSP100x),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Title of Movie', style: TextStyle(color: kWhiteColor)),
              SizedBox(height: kSP10x,),
              Text('Science , Adventuer , Action',
                  style: TextStyle(color: kWhiteColor)),
              SizedBox(height: kSP10x,),
              Text('United State of America',
                  style: TextStyle(color: kWhiteColor)),
              SizedBox(height: kSP10x,),
              Text('2021-11-15', style: TextStyle(color: kWhiteColor)),
              SizedBox(height: kSP10x,),
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  style: TextStyle(color: kWhiteColor))
            ],
          ),
        ),
      ]);
}
