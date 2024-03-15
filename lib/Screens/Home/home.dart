import 'package:flutter/material.dart';
import 'package:lulu_project/Screens/Home/widgets/category.dart';

import 'package:lulu_project/Screens/Home/widgets/products.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


   int current=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar:AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("assets/images/logo.png"),
        actions: [
          Text("Lusail"),
         Image.asset("assets/images/arrow.png"),
         CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset("assets/images/heart-fill.png"))
        ],
      ) ,
     body: SingleChildScrollView(
    child: SafeArea(
      child:Padding(padding: EdgeInsets.only(top: 15,left: 15),
        child: Column(
          children: [
            Row(
             
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                  decoration: BoxDecoration(color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(10),
                  
                  ),
                   child: Center(
                    child: TextFormField(
                 decoration: InputDecoration(
                  hintText: "Search it here....",
                  border: InputBorder.none,
                  prefixIcon:  Image(image: AssetImage("assets/images/search-line (1).png"
                  )),
                 ), 
                ),
              ),
                ),
                SizedBox(width: 10,),
                InkWell(onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color:  Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset("assets/images/Vector (1).png"),
                ),),
                ],
            ),
            SizedBox(height: 15,),
            Container(
                  width: MediaQuery.of(context).size.width / 0.1,
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                  decoration: BoxDecoration(color:Colors.white,
                  border: Border.all(color: const Color.fromARGB(255, 204, 185, 15)),
                  borderRadius: BorderRadius.circular(10),
                  
                  ),
                   child: Center(
                     child: TextFormField(
                                    decoration: InputDecoration(
                                     hintText: "Recommented",
                                     border: InputBorder.none,
                                     suffixIcon:  Image(image: AssetImage("assets/images/Vector (2).png"
                                     )),
                                    ), 
                                   ),
                   ),
                ),
                 SizedBox(height: 10,),
                 CatogoryList(),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/images/card.png"),
              ),),
              SizedBox(height: 10,),
              Product(),
                  ],
        ),
        ),
       ),
    ));
  }
}