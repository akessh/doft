
import 'package:doft_app/const/const.dart';
import 'package:flutter/material.dart';

class PopularBrands extends StatelessWidget {
  const PopularBrands({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const Align(
          alignment: Alignment.centerLeft,
          child:  Text('Popular Brands',style: majorTextStyle,)),
          ksize2,
        SizedBox(
          height: 40,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container( 
                height: 40,
                width: 80,
               
                decoration: BoxDecoration(
                   color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10)
                ),
                child:const Center(child: Text('nike')),
              ),
            );
          },),
        ),
      ],
    );
  }
}
