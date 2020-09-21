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
}
