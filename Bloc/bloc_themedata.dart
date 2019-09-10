import 'dart:async';
import 'package:flutter_app/Models/model_repository.dart';
import 'package:flutter/material.dart';

class ThemeBloc {
  ThemeBloc(this._repository);

  final Repository _repository;
  final _themeStreamController = StreamController<ThemeState>();

  Stream<ThemeState> get theme => _themeStreamController.stream;

  void loadThemeData() {
    _themeStreamController.sink.add(ThemeState._themeLoading());
    _repository.getThemeData().then((theme) {
      _themeStreamController.sink.add(ThemeState._themeData(theme));
    });
  }

  void dispose() {
    _themeStreamController.close();
  }
}

class ThemeState {
  ThemeState();
  factory ThemeState._themeData(ThemeData theme) = ThemeDataState;
  factory ThemeState._themeLoading() = ThemeLoadingState;
}

class ThemeInitState extends ThemeState {}

class ThemeLoadingState extends ThemeState {}

class ThemeDataState extends ThemeState {
  ThemeDataState(this.theme);
  final ThemeData theme;
}