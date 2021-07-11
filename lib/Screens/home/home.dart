import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/Models/Item.dart';
import 'package:furniture_app/Screens/home/components/categories.dart';
import 'package:furniture_app/Screens/home/components/item_card.dart';
import 'package:furniture_app/constants.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding + 12),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Rated',
                    style: TextStyle(
                        fontFamily: 'Helvetica Bold',
                        color: kDarkBlue,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  Image.asset(
                    "assets/icons/tune.png",
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [Expanded(child: Categories())]),
              SizedBox(height: kDefaultPadding + 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '147 products',
                    style: TextStyle(
                        color: kProductTitleColor,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'Most popular',
                        style: TextStyle(
                            color: kDarkBlue,
                            letterSpacing: 0,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/icons/arrow_down.png",
                        width: 12,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: kDefaultPadding * 0.7),
              StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: demoItems.length,
                crossAxisSpacing: 20,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                mainAxisSpacing: 0,
                itemBuilder: (context, index) {
                  return ItemCard(item: demoItems[index], index: index);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
