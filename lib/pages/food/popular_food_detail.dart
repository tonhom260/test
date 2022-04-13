import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/app_column.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text_widget.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/food0.png'))),
            ),
            left: 0,
            right: 0,
          ),
          Positioned(
            top: Dimensions.height45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.popularFoodImageSize - 20,
              bottom: 0,
              child: Column(
                children: [
                  Container(
                    child: AppColumn(
                      text: 'Chinese Side',
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            topLeft: Radius.circular(Dimensions.radius20))),
                    padding: EdgeInsets.only(
                        left: Dimensions.width30,
                        right: Dimensions.width30,
                        top: Dimensions.height20),
                  ),
                  Expanded(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(Dimensions.width45),
                        child: SingleChildScrollView(
                            child: ExpandableTextWidget(
                                text: 'tssssssssssstssssssssstssssssssstsssssssstssssssssssssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffssssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssffffffffffffffftssssssssssstssssssssstssssssssstsssssssstssssssssssssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffssssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssfffffffffftssssssssssstssssssssstssssssssstsssssssstssssssssssssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffssssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssssffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsssssssssssfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff')),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
