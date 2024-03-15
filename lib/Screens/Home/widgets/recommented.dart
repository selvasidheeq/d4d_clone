import 'package:flutter/material.dart';

class recommented extends StatelessWidget {
  const recommented({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                );
  }
}