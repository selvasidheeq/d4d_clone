import 'package:flutter/material.dart';
import 'package:lulu_project/utilis/app_images.dart';

class CatogoryList extends StatefulWidget {
  
 
 
  @override
  State<CatogoryList> createState() => _CatogoryListState();
}

class _CatogoryListState extends State<CatogoryList> {

 List images = [AppImages.image1, 
              AppImages.image2, 
             AppImages.logo,
              AppImages.image1,
              AppImages.image1,];
   int current=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ SizedBox(
        height: 52,
        child: Padding(
          padding: const EdgeInsets.only(left: 7,),
          child: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context,index){
              return FittedBox(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          current=index;
                        });
                      },
      
                   child: Container(
                      height: 40,
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.only(left: 25,right: 25),
                      decoration: BoxDecoration(
                        border: Border.all(color:current==index ?Colors.transparent:const Color.fromARGB(255, 204, 185, 15)),
                        color: current==index ?const Color.fromARGB(255, 204, 185, 15):Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: FittedBox(
                          child: Text(
                           "All Offers",
                            style: TextStyle(
                              color: current==index ? Colors.white:const Color.fromARGB(255, 204, 185, 15),
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),
                    ),
      
                    ), ],
                ),
              );
              }),
             ),
        
      ),
        SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            
              child: Row(
                children: [
                  for(int i=0;i<5;i++)
                  SizedBox(
                    width: 83,
                    height: 81,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(images[i]),
                      )
                  )
                  ],
              ),
            ),
      ]
    );
  }
}