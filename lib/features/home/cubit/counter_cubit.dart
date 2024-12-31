import 'package:electronic_sebha/core/styles/image_app.dart';
import 'package:electronic_sebha/core/styles/string_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  double initialValue = 0;
  String image = ImageApp.image2;
  String title= StringApp.subhanAllah;

  counterIncrement() {
    initialValue++;
    emit(CounterUpdate());
  }

  counterReset() {
    initialValue = 0;
    emit(CounterUpdate());
  }

  void changeBackGroundImage(String newImage) {
    image = newImage;
    emit(ImageUpdate());
  }
  void changeTextAppBar(String newText){
    title=newText;
    emit(TextUpdate());
  }
}
