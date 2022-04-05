import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Text('Country'),
                Text('City'),
                Text('DishEmpty')

              ],
            ),
            Container(
              width:45,
              height:45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
