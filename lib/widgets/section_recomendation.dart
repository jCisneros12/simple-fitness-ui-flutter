import 'package:fitness/data/recommendation_model.dart';
import 'package:fitness/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionRecomendation extends StatelessWidget {
  const SectionRecomendation({super.key});

  @override
  Widget build(BuildContext context) {
    List<MyRecommendation> recommendationList = MyRecommendation.getRecommendationList();
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Recommendation \nfor Diet",
              style: TextStyle(
                color: Color(0xff1D1617),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendationList.length,
              itemBuilder: (BuildContext context, index) {
                return RecomendationItem(
                  recommendationName: recommendationList[index].name,
                  recommendationDesc: recommendationList[index].description,
                  recommendationImg: recommendationList[index].image,
                  recommendationIndex: index,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class RecomendationItem extends StatelessWidget {
  final String recommendationName, recommendationDesc, recommendationImg;
  final int recommendationIndex;
  const RecomendationItem({
    super.key,
    required this.recommendationName,
    required this.recommendationDesc,
    required this.recommendationImg,
    required this.recommendationIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 200,
        height: 240,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: itEvenNumber(recommendationIndex)
                  ? [                      
                      const Color(0xff9DCEFF).withOpacity(.2),
                      const Color(0xff92A3FD).withOpacity(.2),
                    ]
                  : [
                      const Color(0xffC58BF2).withOpacity(.2),
                      const Color(0xffEEA4CE).withOpacity(.2)
                    ],
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              recommendationImg,
              height: 80,
            ),
            Column(
              children: [
                Text(
                  recommendationName,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1D1617)),
                ),
                Text(
                  recommendationDesc,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7B6F72)),
                ),
              ],
            ),
            MyGradientButton(index: recommendationIndex,)
          ],
        ),
      ),
    );
  }
}

class MyGradientButton extends StatelessWidget {
  final int index;
  const MyGradientButton({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 110.0,
        height: 38.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: itEvenNumber(index)
                ? [
                    const Color(0xff9DCEFF),
                    const Color(0xff92A3FD),
                  ]
                : [
                    const Color(0xffC58BF2),
                    const Color(0xffEEA4CE),
                  ],
          ),
          borderRadius: BorderRadius.circular(99),
        ),
        child: const Text(
          "View",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 12.0,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
