import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

part 'minggu7_event.dart';
part 'minggu7_state.dart';

class Minggu7Bloc extends Bloc<Minggu7Event, Minggu7State> {
  Minggu7Bloc() : super(Minggu7Initial()) {

    on<GridOfImage>((event, emit) {
      emit(ShowImagesinGrid());
    });

    on<SelectImage>((event, emit) {
      emit(
        ShowDialogBottomSheet(),
      );
    });

    on<OpenImage>((event, emit) {
      emit(ShowImage());
    });
  }
}
