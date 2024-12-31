import 'package:electronic_sebha/core/styles/size_app.dart';
import 'package:electronic_sebha/core/styles/text_styles.dart';
import 'package:electronic_sebha/features/home/cubit/counter_cubit.dart';
import 'package:electronic_sebha/features/home/cubit/counter_state.dart';
import 'package:electronic_sebha/features/home/widgets/app_bar.dart';
import 'package:electronic_sebha/features/home/widgets/custom_circle_avatar.dart';
import 'package:electronic_sebha/features/home/widgets/build_end_drawer.dart';
import 'package:electronic_sebha/features/home/widgets/build_back_ground_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/show_reset_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          CounterCubit counterCubit = BlocProvider.of(context);
          return Scaffold(
            appBar: appBar(title: counterCubit.title),
            endDrawer: BuildEndDrawer(
              counterCubit: counterCubit,
            ),
            endDrawerEnableOpenDragGesture: true,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(counterCubit.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                spacing: SizeApp.s80,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(SizeApp.s60),
                    child: CustomCircleAvatar(
                      radius: SizeApp.s60,
                      child: Text(
                        "${counterCubit.initialValue.toInt()}",
                        style: TextStyles.white30,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomCircleAvatar(
                        child: IconButton(
                          onPressed: () {
                            showResetDialog(context,counterCubit);
                          },
                          icon: Icon(
                            CupertinoIcons.restart,
                            color: Colors.white,
                            size: SizeApp.s30,
                          ),
                        ),
                      ),
                      CustomCircleAvatar(
                        child: IconButton(
                          onPressed: () {
                            counterCubit.counterIncrement();
                          },
                          icon: Icon(
                            CupertinoIcons.plus,
                            color: Colors.white,
                            size: SizeApp.s30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  BuildBackGroundImage(
                    counterCubit: counterCubit,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
