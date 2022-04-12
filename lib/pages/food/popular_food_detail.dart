import 'package:ecommerce/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_icon.dart';

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
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,
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
          )
        ],
      ),
    );
  }
}
