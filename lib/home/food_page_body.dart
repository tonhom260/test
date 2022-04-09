import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:ecommerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/icon_and_text_widget.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.92);
  var _currPageValue=0.0;
  double _scaleFactor=0.8;


  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }


  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale = 1-(_currPageValue-index)*(1-_scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      // print('currScale/c1 = $currScale');
      // print('index/c1 = $index');
    }else if(index ==_currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      // print('currScale = $currScale');
      // print('index = $index');
    }else if(index ==_currPageValue.floor()+2){
      matrix = Matrix4.diagonal3Values(1, 0.8, 1);
    }else {
      var currScale = _scaleFactor+(_currPageValue-index-1)*(1-_scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }
      return
       Transform(
         transform: matrix,
         child: Stack(
          children: [
            Container(
              height: 250,
              margin: EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food0.png"))),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 105,
                  margin: const EdgeInsets.only(left: 45, right: 45, bottom: 20),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(offset: Offset(0, 3), color: Color(0xFFECEFF1))
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Bigtext(text: "Chinese Side"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List<Widget>.generate(
                                  5,
                                  (index) => Icon(Icons.star,
                                      color: AppColors.mainColor, size: 15)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Smalltext(text: '4.5'),
                            const SizedBox(
                              width: 10,
                            ),
                            Smalltext(text: "1287"),
                            const SizedBox(
                              width: 10,
                            ),
                            Smalltext(text: "Comments")
                          ],
                        ),
                        const SizedBox(height:10 ,),
                        Row(
                          children:  [
                            IconAndTextWidget(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: AppColors.iconColor1),
                            IconAndTextWidget(
                                icon: Icons.location_on,
                                text: "32min",
                                iconColor: AppColors.mainColor),
                            IconAndTextWidget(
                                icon: Icons.access_time_rounded,
                                text: "Normal",
                                iconColor: AppColors.iconColor2)
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
      ),
       );

  }
}
