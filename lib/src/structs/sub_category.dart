enum SubCategory { basic_operations, power, equation_solving, random }

extension SubCategoryResolver on SubCategory {
  String get value {
    switch (this) {
      case SubCategory.basic_operations:
        return '4 basic operations';
      case SubCategory.power:
        return 'Power';
        break;
      case SubCategory.equation_solving:
        return 'Equation solving';
      case SubCategory.random:
        return 'Random';
      default:
        throw FormatException(this.toString() + ' is not a valid value');
    }
  }
}
