import 'package:ecommerce/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
         Container(

          child: Container(
            margin: EdgeInsets.only(top: 45,bottom: 15,),
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Bigtext(text: 'Bangladesh',color: AppColors.mainColor,size: 30,),
                    Text('City'),
                  ],
                ),
                Center(
                  child: Container(
                    child: Icon(Icons.search,color: Colors.white,),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),

    );
  }
}
