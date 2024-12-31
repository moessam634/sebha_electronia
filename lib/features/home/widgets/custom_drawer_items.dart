import 'package:electronic_sebha/features/home/cubit/counter_cubit.dart';
import 'package:electronic_sebha/features/home/model/model_drawer.dart';
import 'package:flutter/material.dart';
import '../../../core/styles/size_app.dart';
import '../../../core/styles/text_styles.dart';

class CustomDrawerItems extends StatelessWidget {
  const CustomDrawerItems(
    this.modelDrawer, {
    super.key,
    required this.counterCubit,
  });

  final ModelDrawer modelDrawer;
  final CounterCubit counterCubit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        counterCubit.changeTextAppBar(modelDrawer.title);
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: SizeApp.s20),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(SizeApp.s20),
        ),
        child: Text(
          modelDrawer.title,
          style: TextStyles.white30,
        ),
      ),
    );
  }
}
