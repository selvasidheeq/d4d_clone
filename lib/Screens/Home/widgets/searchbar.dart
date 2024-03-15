import 'package:flutter/material.dart';

class customSearchbar extends StatelessWidget {
  const customSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
             
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
            );
  }
}