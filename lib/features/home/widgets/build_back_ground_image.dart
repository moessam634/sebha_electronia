import 'package:electronic_sebha/core/styles/size_app.dart';
import 'package:electronic_sebha/features/home/cubit/counter_cubit.dart';
import 'package:electronic_sebha/features/home/model/model_home.dart';
import 'package:flutter/material.dart';
import 'custom_image_container.dart';

class BuildBackGroundImage extends StatelessWidget {
  const BuildBackGroundImage({super.key, required this.counterCubit});

  final CounterCubit counterCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeApp.s100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return CustomImageContainer(
              images[index],
              counterCubit: counterCubit,
            );
          }),
    );
  }
}
