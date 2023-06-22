
import 'package:doft_app/const/const.dart';
import 'package:doft_app/utils/custom_appbar.dart';
import 'package:doft_app/utils/popular_brands.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(searchcontroller: searchController,),
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.lightBlue,
                    shadowColor: Colors.black,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                        image: AssetImage('assets/image2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Special Offers..!',
                        style: GoogleFonts.acme(fontSize: 24, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const PopularBrands(),
          const  Align(
              alignment: AlignmentDirectional.centerStart,
              child:  Text('Popular Products',style:majorTextStyle,)),
           GridView.builder(
            shrinkWrap: true,
            itemCount: 30,
            scrollDirection: Axis.vertical,
            physics:const ScrollPhysics(),
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.72,
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
        mainAxisSpacing: 1.0,
             ),
               itemBuilder: (ctx,index){
           return Container(
            height: 70,width: 40,
            
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8)
            ),
            );
           
           
           
           
           })
          ],
        ),
      ),
    );
  }
}
