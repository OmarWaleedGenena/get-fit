import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/screenutil.dart';
import '../../constants/space.dart';
import '../../constants/text_styles.dart';
import '../widgets/meals_card.dart';
import '../widgets/search_bar.dart';
class LunchList extends StatelessWidget {
  const LunchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
        actions: const [
          Center(
            child: SearchBar(),
          )
        ],
      ),
      body: Column(children: [
        const Space(
          boxHeight: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: height(40),
          width: screenWidth,
          color: const Color(0xFFDE5454),
          child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lunch',
                style: widgetTitle2,
              )),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const MealsCard(image: 'assets/images/grill_chicken.png',title: 'Chicken And Mushrooms',calories: '250 cal',time: '18 min cook time',);
              }),
        )
      ]),
    );
  }
}
