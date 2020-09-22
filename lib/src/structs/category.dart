import 'package:arithmic/src/pages/algebra_page.dart';
import 'package:flutter/widgets.dart';

enum Category { algebra, radix, calculus }

extension CategoryResolver on Category {
  String get value {
    switch (this) {
      case Category.algebra:
        return 'Algebra';
      case Category.radix:
        return 'Radix';
      case Category.calculus:
        return 'Calculus';
    }
    throw FormatException(this.toString() + 'is not a supported value');
  }

  Future<dynamic> navigate(BuildContext context) {
    String _routeName = null;
    switch (this) {
      case Category.algebra:
        _routeName = AlgebraPage.routeName;
        break;
      case Category.radix:
        break;
      case Category.calculus:
        break;
    }
    if (_routeName != null) {
      return Navigator.pushNamed(context, _routeName);
    }
    throw UnimplementedError(this.toString() + ' page is not yet implemented');
  }
}
