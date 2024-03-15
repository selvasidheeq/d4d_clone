
import 'package:flutter/material.dart';
import 'package:lulu_project/Screens/Home/home.dart';
import 'package:lulu_project/utilis/app_images.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var _selectedIndex = 0;

  List<Widget> buildscreens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildscreens[_selectedIndex],
      bottomNavigationBar: 
        Container(
          height: 97,
          width: 441,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
               blurRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
            ),
          ),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      listOfimages[index],        
                      color: index == _selectedIndex
                      ? Colors.black
                      : Colors.grey,
                    ),
                    Text(
                      listofnames[index],
                      style: TextStyle(
                        color: index == _selectedIndex
                        ? Colors.black
                        : Colors.grey,
                      ),
                    ),
                  ],
                ),   
              ),
            ),    
          ),      
        ),
      );
    }
    List<String> listOfimages = [
      AppImages.settings,
      AppImages.simplification, 
      AppImages.search,
      AppImages.account,
       ];
    List<String> listofnames = [
      "Offers",
      "Category",
      "Search",
      "Account",
    ];
  }