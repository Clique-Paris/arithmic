import 'package:arithmic/main_app.dart';
import 'package:arithmic/src/services/settings_button_service.dart';
import 'package:arithmic/src/services/theme_service.dart';
import 'package:arithmic/src/themes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
        create: (context) =>
            ThemeService(darkTheme: Themes.dark, lightTheme: Themes.light)),
    ChangeNotifierProvider(create: (context) => SettingsButtonService())
  ], child: MainApp()));
}
