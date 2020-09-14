import 'package:arithmic/src/pages/home_page.dart';
import 'package:flutter/widgets.dart';

abstract class Router {
  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage(),
  };
}
