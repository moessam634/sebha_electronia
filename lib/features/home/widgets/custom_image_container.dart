import 'package:electronic_sebha/core/styles/size_app.dart';
import 'package:electronic_sebha/features/home/cubit/counter_cubit.dart';
import 'package:electronic_sebha/features/home/model/model_home.dart';
import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer(
    this.modelHome, {
    super.key, required this.counterCubit,
  });

  final ModelHome modelHome;
  final CounterCubit counterCubit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        counterCubit.changeBackGroundImage(modelHome.image);
      },
      child: Container(
        width: SizeApp.s80,
        height: SizeApp.s80,
        margin: EdgeInsets.all(SizeApp.s8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeApp.s80),
          image: DecorationImage(
            image: AssetImage(modelHome.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
