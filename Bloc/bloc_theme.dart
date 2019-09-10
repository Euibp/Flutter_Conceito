import 'dart:async';
import 'package:flutter_app/Models/model_repository.dart';
//import 'package:flutter/material.dart';

class ThemeBloc {
  ThemeBloc(this._repository);

  final Repository _repository;
  final _themeStreamController = StreamController<ThemeState>();

  Stream<ThemeState> get outTheme => _themeStreamController.stream;
  Sink<ThemeState> get inTheme => _themeStreamController.sink;

  void loadThemeData() {
    inTheme.add(ThemeState._themeLoading());

    _repository.getThemeApp().then(
      (theme) {
      inTheme.add(ThemeState._themeData(theme));
    });
  }

  void dispose() {
    _themeStreamController.close();
  }
}

class ThemeState {
  ThemeState();
  factory ThemeState._themeData(ThemeApp theme) = ThemeDataState;
  factory ThemeState._themeLoading() = ThemeLoadingState;
}

class ThemeInitState extends ThemeState {}

class ThemeLoadingState extends ThemeState {}

class ThemeDataState extends ThemeState {
  ThemeDataState(this.theme);
  final ThemeApp theme;
}
