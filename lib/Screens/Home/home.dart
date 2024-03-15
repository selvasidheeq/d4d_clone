import 'package:flutter/material.dart';

import 'package:lulu_project/Screens/Home/widgets/category.dart';

import 'package:lulu_project/Screens/Home/widgets/products.dart';
import 'package:lulu_project/Screens/Home/widgets/recommented.dart';
import 'package:lulu_project/Screens/Home/widgets/searchbar.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 String _dropdownValue = "Lusail";

  var items =[
    "Lusail","aaa","bbb"
  ];
   int current=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
     appBar:AppBar(
       
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("assets/images/logo.png"),
        actions: [

         DropdownButton( value: _dropdownValue,
                          items: items.map((String item){
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item,style: const TextStyle(color: Colors.black,fontSize: 10),)
                            );
                          }).toList(),
                          onChanged:(String? newValue){
                            setState((){
                              _dropdownValue = newValue!;
                            });
                          },
                        ),
        //  Text("Lusail"),
        //  Image.asset("assets/images/arrow.png"),
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
       
           customSearchbar(),
            SizedBox(height: 15,),
           recommented(),
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