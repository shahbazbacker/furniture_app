import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Models/Category.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: demoCategories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  this.selectedIndex = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color:
                        selectedIndex == index ? kDarkBlue : kBackgroundColor,
                    boxShadow: selectedIndex == index
                        ? [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 7.0,
                              spreadRadius: 2,
                              offset: const Offset(3.0, 2.0),
                            ),
                          ]
                        : []),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding + 2),
                margin: EdgeInsets.only(
                    left: 6,
                    right: kDefaultPadding * 0.5,
                    top: kDefaultPadding * 0.7,
                    bottom: kDefaultPadding * 0.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(demoCategories[index].icon),
                    SizedBox(width: 5),
                    Text(
                      demoCategories[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        color: selectedIndex == index ? kWhiteColor : kDarkBlue,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
