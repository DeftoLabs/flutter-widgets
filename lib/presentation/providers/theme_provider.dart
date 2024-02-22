import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvier = StateProvider((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);


final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
  );

class ThemeNotifier extends StateNotifier <AppTheme> {

  // STATE es una nueva instancia de AppTheme
  ThemeNotifier(): super (AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex (int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }


}