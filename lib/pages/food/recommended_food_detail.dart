import 'package:ecommerce/controllers/popular_product_controller.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:ecommerce/widgets/expandable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../widgets/app_icon.dart';

class RecommendedFoodDetail extends StatelessWidget {

  RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            //ความสูงของ พื้นที่ icon ด้านบน หรือเรียกได้ว่า ระยะทางของ icon กับ ขอบด้านบน เป็น pixel
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(
                  icon: Icons.shopping_cart,
                )
              ],
            ),
            backgroundColor: AppColors.yellowColor,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              //พื้นที่ตอนที่มันหดลงมา ด้านบนจะเหลือ offset กี่ pixel
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10, bottom: Dimensions.height10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20))),
                // margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),

                child: Center(
                  child: Bigtext(
                    text: 'Chinese Side',
                    size: Dimensions.font26,
                  ),
                ),
                width: double.maxFinite,
              ),
            ),
            // floating: true,
            pinned: true,
            //ให้ appbar หายไปเลยไหม เวลาที่หดลงมา
            expandedHeight: Dimensions.recommendedImage,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height10,
                      bottom: Dimensions.height10),
                  child: ExpandableTextWidget(
                    text:
                        'fffffffffffffffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
                  )))
        ],
      ),
      bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIcon(
                icon: Icons.remove,
                iconColor: Colors.white,
                backgroundColor: AppColors.mainColor,
              ),
              SizedBox(
                width: Dimensions.width45*1.3,
              ),
              Bigtext(text: '\$12.88  X  0'),
              SizedBox(
                width: Dimensions.width45*1.3,
              ),
              AppIcon(
                icon: Icons.add,
                iconColor: Colors.white,
                backgroundColor: AppColors.mainColor,
              )
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: Dimensions.height45,height: Dimensions.height45,

                // padding: EdgeInsets.only(
                //     left: Dimensions.width10,
                //     right: Dimensions.width10,
                //     bottom: Dimensions.width10,
                //     top: Dimensions.width10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius15)),
                child: AppIcon(iconSize:Dimensions.iconSize16,icon: Icons.favorite,backgroundColor: Colors.white,iconColor: AppColors.mainColor,),
              ),
              Container(
                // width: 100,
                  height:Dimensions.height45 ,
                  padding: EdgeInsets.only(
                      left: Dimensions.width45,
                      right: Dimensions.width45,
                      bottom: Dimensions.height10,
                      top: Dimensions.height10),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(Dimensions.radius20)),
                  child: Bigtext(
                    text: '\$0.08 Add to cart',
                    color: Colors.white,
                  ))
            ],
          ),
          decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20))),
          height: Dimensions.bottomNavWindowSize,
          padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width45*1.3,
              right: Dimensions.width45*1.3),
        )
      ]),
    );
  }
}
