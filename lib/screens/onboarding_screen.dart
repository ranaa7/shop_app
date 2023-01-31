import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
   bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.pink[50],
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (index){
                    setState(() {
                    if(index==2)
                      {
                        lastpage=true;
                      }

                  });},
                  controller: controller,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/3d.jpg",
                            height: 600,
                          ),
                          Center(
                              child: Text("Shop Now Online",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30)))
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/shop.jpg",
                            height: 500,
                          ),
                          Center(
                              child: Text(
                            "Deliver what ever you want",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ))
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/online-marketing.jpg",
                            height: 500,
                          ),
                          Center(
                              child: Text("Pay it through Visa",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
    SmoothPageIndicator(
    controller: controller,
    count:  3,

    )
    ,
              lastpage?ElevatedButton(
                child: Text('Start Now'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: ()async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool("showHome", true);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homescreen()));
                  },
              ):ElevatedButton(
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purpleAccent,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
