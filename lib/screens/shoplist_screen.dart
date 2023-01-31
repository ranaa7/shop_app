import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubit/cubit_class_cubit.dart';

class ShopListScreen extends StatelessWidget {
  const ShopListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClassCubit, ClassState>(builder: (context, state) {
      var cubit = context.read<ClassCubit>();
      return Scaffold(
          body: GridView.builder(
        itemCount: cubit.dress.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Expanded(child: Image.network(cubit.dress[index].thumbnail)),
              Text(
                cubit.dress[index].title,
                style: TextStyle(color: Colors.black),
              ),
              Text(cubit.dress[index].description,
                  style: TextStyle(color: Colors.black)),
              Text(cubit.dress[index].price.toString(),
                  style: TextStyle(color: Colors.black))
            ],
          );
        },
      ));
    });
  }
}
