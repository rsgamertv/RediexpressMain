import 'package:RediExpress/repositorires/Settings/SettingsRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({required this.repository}) : super(ThemeState(repository.isDarkTheme() ? Brightness.dark : Brightness.light));
  final SettingsRepository repository;
  Future<void> SetThemeBrightness(Brightness brightness) async{
    emit(ThemeState(brightness));
    await repository.isDarkThemeSet(brightness == Brightness.dark);

  }
}
