import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Models/Item.dart';
import 'package:furniture_app/Screens/details/details.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    @required this.item,
    @required this.index,
  }) : super(key: key);

  final Item item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsScreen(item: item)));
      },
      child: Container(
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: kBackgroundColor),
        margin: EdgeInsets.only(
            top: index.isOdd ? 25 : 0, bottom: index.isOdd ? 0 : 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Hero(
              tag: item.id,
              child: Image.asset(
                item.image,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                        color: kProductTitleColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: kDefaultPadding * 0.4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold))
                      ])),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/star.svg',
                            color: kGoldColor,
                            width: kDefaultPadding * 0.7,
                          ),
                          SizedBox(width: kDefaultPadding * 0.1),
                          Text(item.rating.toString(),
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
