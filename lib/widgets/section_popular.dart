import 'package:fitness/data/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionPopular extends StatelessWidget {
  const SectionPopular({super.key});

  @override
  Widget build(BuildContext context) {
    List<PopularMoodel> popularList = PopularMoodel.getPopularList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 30.0),
          child: Text(
            "Popular",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1D1617)),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: popularList.length,
          itemBuilder: ((context, index) {
            return SectionPopularItem(
              name: popularList[index].name,
              description: popularList[index].description,
              image: popularList[index].image,
            );
          }),
        ),
        const SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}

class SectionPopularItem extends StatelessWidget {
  final String name, description, image;
  const SectionPopularItem({
    super.key,
    required this.name,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Color(0x121D1617),
            spreadRadius: 0,
            blurRadius: 40,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            height: 45.0,
            image,
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1617)),
              ),
              Text(
                description,
                style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7B6F72)),
              ),
            ],
          ),
          SvgPicture.asset(
            height: 14.0,
            'assets/icons/Arrow-Right.svg',
          )
        ],
      ),
    );
  }
}
