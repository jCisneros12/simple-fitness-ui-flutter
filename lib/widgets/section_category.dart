import 'package:fitness/data/categories_model.dart';
import 'package:fitness/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionCategory extends StatefulWidget {
  const SectionCategory({super.key});

  @override
  State<SectionCategory> createState() => _SectionCategoryState();
}

class _SectionCategoryState extends State<SectionCategory> {
  List<MyCategory> categoryList = [];

  _getCategoryList() => categoryList = MyCategory.getCategoryList();

  @override
  Widget build(BuildContext context) {
    _getCategoryList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30.0, bottom: 15, left: 20.0),
          child: Text(
            "Category",
            style: TextStyle(
              color: Color(0xff1D1617),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (BuildContext context, index) {
                return ItemCategory(
                    categoryName: categoryList[index].name,
                    categoryImage: categoryList[index].image,
                    categoryIndex: index);
              }),
        ),
      ],
    );
  }
}

class ItemCategory extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  final int categoryIndex;
  const ItemCategory({
    super.key,
    required this.categoryName,
    required this.categoryImage,
    required this.categoryIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 90.0,
        height: 120.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: itEvenNumber(categoryIndex)
                ? [
                    const Color(0xff9DCEFF).withOpacity(0.2),
                    const Color(0xff92A3FD).withOpacity(0.2)
                  ]
                : [
                    const Color(0xffC58BF2).withOpacity(0.2),
                    const Color(0xffEEA4CE).withOpacity(0.2)
                  ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              categoryImage,
              height: 18.0,
            ),
            Text(
              categoryName,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1D1617)),
            ),
          ],
        ),
      ),
    );
  }
}
