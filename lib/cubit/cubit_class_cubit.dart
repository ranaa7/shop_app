

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/models/dresses_model.dart';
import 'package:shop_app/models/electronics_model.dart';
import 'package:shop_app/models/woman_model.dart';

import '../models/man_model.dart';

part 'cubit_class_state.dart';

class ClassCubit extends Cubit<ClassState> {
  ClassCubit() : super(ClassInitial()){
        getdress();
        getwomanmodel();
  }
  ManModel man = ManModel(shoes: "", shirt: "", watch: "");
  WomanModel woman =WomanModel(jewelary: "", bags:"", watch: "", skincare: "", womensdresses: "", tops: "");
  ElectronicsModel electronics = ElectronicsModel(smartphones: "", laptops: "", homedecoration: "", furniture: "");
  List<Dress> dress =[];





  Future getdress() async{
    try {
      var response = await Dio().get("https://dummyjson.com/products/category/womens-dresses");
      dress = List<Dress>.from(response.data['products'].map((e)=>Dress.fromjson(e)));
      emit(getdressstate());
    }
    catch(e){
      print(e);
    }
  }

  Future getmanmodel() async{
    try {
      var response = await Dio().get(
          "https://dummyjson.com/products/categories");
      man= ManModel.fromjson(response.data);
      emit(getmanProductstate());
    }
    catch (e) {
      print(e);
    }
  }
  Future getwomanmodel() async{
    try {
      var response = await Dio().get(
          "https://dummyjson.com/products/categories");
      woman= WomanModel.fromjson(response.data);
      emit(getwomanProductstate());
    }
    catch (e) {
      print(e);
    }
  }
  Future getelectronicsmodel() async{
    try {
      var response = await Dio().get(
          "https://dummyjson.com/products/categories");
      electronics= ElectronicsModel.fromjson(response.data);
      emit(getelectronicsProductstate());
    }
    catch (e) {
      print(e);
    }
  }

}
