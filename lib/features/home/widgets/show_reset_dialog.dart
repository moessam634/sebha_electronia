import 'package:electronic_sebha/core/styles/string_app.dart';
import 'package:flutter/material.dart';
import '../cubit/counter_cubit.dart';

void showResetDialog(
    BuildContext context, CounterCubit counterCubit) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(StringApp.confirmation),
      content: Text(StringApp.areYouSure),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Close the dialog
          },
          child: Text(StringApp.cancel),
        ),
        TextButton(
          onPressed: () {
            counterCubit.counterReset(); // Perform reset action
            Navigator.pop(context); // Close the dialog
          },
          child: Text(StringApp.yes),
        ),
      ],
    ),
  );
}
