import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/dimensions.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:ecommerce/widgets/expandable_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_icon.dart';

class RecommendedFoodDetail extends StatelessWidget {
   RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,//ความสูงของ พื้นที่ icon ด้านบน หรือเรียกได้ว่า ระยะทางของ icon กับ ขอบด้านบน เป็น pixel
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear,),
                AppIcon(icon: Icons.shopping_cart,)
              ],
            ),
            backgroundColor: AppColors.yellowColor,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0), //พื้นที่ตอนที่มันหดลงมา ด้านบนจะเหลือ offset กี่ pixel
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height10,bottom:  Dimensions.height10),
                decoration: BoxDecoration(color: Colors.white,boxShadow: [
                  // BoxShadow(
                  //   color: Colors.grey.withOpacity(0.7),
                  //   spreadRadius: 1,
                  //   blurRadius: 3,
                  //   offset: const Offset(0, 1), // changes position of shadow
                  // ),
                ],
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.radius20),topRight: Radius.circular(Dimensions.radius20))),
                // margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),

                child: Center(child: Bigtext(text: 'Chinese Side',size: Dimensions.font26,),),
                width: double.maxFinite,

              ),
            ),
            // floating: true,
            pinned: true, //ให้ appbar หายไปเลยไหม เวลาที่หดลงมา
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
                margin:EdgeInsets.only(
                  left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height10
                ),child: ExpandableTextWidget(text: 'fffffffffffffffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddffffffffffffffffdsafdsafdsafffffffffffffffffdsafdsafdsafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddafdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',))
          )
        ],
      ),
        bottomNavigationBar:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove,iconColor: Colors.white,backgroundColor: AppColors.mainColor,),
                AppIcon(icon: Icons.add,iconColor: Colors.white,backgroundColor: AppColors.mainColor,)
              ],
            ),
          ]),
        );

  }
}
