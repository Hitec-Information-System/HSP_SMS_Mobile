import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:frontend/domain/settings/theme/app_theme.dart';
import 'package:frontend/domain/settings/theme/i_theme_repository.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final IThemeRepository _themeRepository;

  ThemeBloc(
    this._themeRepository,
  ) : super(CurTheme(theme: AppTheme.light()));

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(
      themeCheckRequested: (e) async* {
        final themeDataOrFailure = await _themeRepository.getThemeData();
        yield themeDataOrFailure.fold(
            (failure) => CurTheme(theme: AppTheme.light()), (_) => state);
      },
      themeChanged: (e) async* {
        if (state.theme.isDark) {
          yield CurTheme(theme: AppTheme.light());
        } else {
          yield CurTheme(theme: AppTheme.dark());
        }
      },
      saved: (e) async* {},
    );
  }
}
