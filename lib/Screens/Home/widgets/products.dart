

import 'package:flutter/material.dart';
import 'package:lulu_project/utilis/app_images.dart';
import 'package:lulu_project/utilis/text_style.dart';


class Product extends StatelessWidget {
   Product({super.key});
  List productListImage = [
    AppImages.rectangle2,
   AppImages.rectangle1,
   AppImages.rectangle2,
   AppImages.rectangle1,
  ];
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: 4,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.50,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Column(
             
              children: [
                SizedBox(
                  height: 240,
                  width: 160,
                  child: Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(productListImage[index]),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: Image.asset(AppImages.heart),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 15,
                        child: Image.asset(AppImages.image1),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all( 8),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            Text(
                              'Lulu Ernakulam',
                              style:TextStyles.title
                             
                            ),
                            Text(
                             'Sprawling, residential \n Ernakulam is known for Marine \n Drive, a busy ...',
                              style: TextStyles.subtitle,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppImages.pages),
                                Text('1 Pages',style: const TextStyle(color: Colors.grey,fontSize: 10,),),
                              ],
                            ) ,
                            Row(
                              children: [
                                Image.asset(AppImages.time),
                                Text('3 Days left',style: const TextStyle(color: Colors.grey,fontSize: 10,),),                          
                              ],
                            ),

                          ],
                        )
                    ],
                  ),
                  ),
                ],
              ),              
            );
          }
        ),    
      );
  }
}
