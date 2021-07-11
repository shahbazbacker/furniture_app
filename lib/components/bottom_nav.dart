import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Models/Item.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[100].withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.all(kDefaultPadding + 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                item.image,
                width: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: kDefaultPadding * 0.4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/star.svg',
                              color: kGoldColor,
                              width: kDefaultPadding * 0.4,
                            ),
                            SizedBox(width: kDefaultPadding * 0.3),
                            Text(item.rating.toString(),
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: '\$ ',
                              style: TextStyle(
                                  color: kGoldColor,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: item.price.toString(),
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.bold))
                        ])),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            width: 40,
            height: 40,
            // margin: EdgeInsets.only(right: kDefaultPadding),
            alignment: Alignment.center,
            child: Icon(
              Icons.chevron_right,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
