import 'package:arithmic/src/pages/home_page.dart';
import 'package:arithmic/src/pages/training_page.dart';
import 'package:flutter/widgets.dart';

abstract class Router {
  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    HomePage.routeName: (BuildContext context) => HomePage(),
    TrainingPage.routeName: (BuildContext context) => TrainingPage(),
  };
}
