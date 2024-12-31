import 'package:electronic_sebha/features/home/cubit/counter_cubit.dart';
import 'package:electronic_sebha/features/home/model/model_drawer.dart';
import 'package:flutter/material.dart';
import '../../../core/styles/size_app.dart';
import 'custom_drawer_items.dart';

class BuildEndDrawer extends StatelessWidget {
  const BuildEndDrawer({super.key, required this.counterCubit});

  final CounterCubit counterCubit;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      backgroundColor: Colors.black12,
      child: Column(
        spacing: SizeApp.s16,
        children: [
          ListView.builder(
            padding: EdgeInsets.all(SizeApp.s16),
            itemCount: titles.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return CustomDrawerItems(
                titles[index],
                counterCubit: counterCubit,
              );
            },
          )
        ],
      ),
    );
  }
}
