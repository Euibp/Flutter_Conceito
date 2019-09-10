//import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Models/model_repository.dart';
import 'package:flutter_app/Bloc/bloc_themedata.dart';
import 'package:flutter_app/utils/images.dart';

class ThemeBlocScreen extends StatefulWidget {
  ThemeBlocScreen(this._repository);
  final Repository _repository;

  @override
  State<StatefulWidget> createState() => _ThemeBlocScreenState();
}

class _ThemeBlocScreenState extends State<ThemeBlocScreen> {
  ThemeBloc _themeBloc;

  @override
  void initState() {
    _themeBloc = ThemeBloc(widget._repository);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: SafeArea(
        child: StreamBuilder<ThemeState>(
          stream: _themeBloc.theme,
          initialData: ThemeInitState(),
          builder: (context, snapshot) {
            if (snapshot.data is ThemeInitState) {
              return _buildInit();
            }
            if (snapshot.data is ThemeDataState) {
              ThemeDataState state = snapshot.data;           
              return _buildContent(state.theme);
            }
            if (snapshot.data is ThemeLoadingState) {
              return _buildLoading();
            }
          },
        ),
      ),
    );
  }
  

    Widget _buildInit() {
    return Center(
      child: RaisedButton(
        child: const Text('Load user data'),
        onPressed: () {
          _themeBloc.loadThemeData();
        },
      ),
    );
  }

  Widget _buildContent(ThemeData theme) {
    return Center(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Hello ${theme.typography}'),
          RaisedButton(
            child: Text('Cor Primária'),
            color: theme.primaryColor,
            onPressed: (){},
          ),
           Image(image: UtilImages.loadingGif, fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  void dispose() {
    _themeBloc.dispose();
    super.dispose();
  }
}