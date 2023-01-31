import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubit/cubit_class_cubit.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClassCubit, ClassState>(builder: (context, state) {
      var cubit = context.read<ClassCubit>();
      return Scaffold(
          body:
          ListView(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/man.jpg"),
                    Center(child: Text(cubit.woman.womensdresses,
                        style: TextStyle(color: Colors.black, fontSize: 30)))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/download (1).jpg", width: double.infinity,),
                    Center(child: Text(cubit.woman.skincare,
                        style: TextStyle(color: Colors.black, fontSize: 30)))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/electronics.jpg"),
                    Center(child: Text(cubit.woman.jewelary,
                        style: TextStyle(color: Colors.black, fontSize: 30)))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/electronics.jpg"),
                    Center(child: Text(cubit.woman.bags,
                        style: TextStyle(color: Colors.black, fontSize: 30)))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: [
                    Image.asset("assets/electronics.jpg"),
                    Center(child: Text(cubit.woman.tops,
                        style: TextStyle(color: Colors.black, fontSize: 30)))
                  ],
                ),
              ),
            ],
          ));
    });
  }
}
