import 'package:arithmic/src/structs/category.dart';
import 'package:arithmic/src/structs/dfficulty.dart';
import 'package:arithmic/src/structs/game_mode.dart';
import 'package:arithmic/src/structs/sub_category.dart';
import 'package:arithmic/src/structs/user.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:uuid/uuid.dart';

class Session {
  final String uid;
  final GameMode mode;
  final Difficulty difficulty;
  final Category category;
  final SubCategory subCategory;
  final User user;
  Session(
      {@required this.mode,
      @required this.difficulty,
      @required this.category,
      this.subCategory,
      @required this.user})
      : this.uid = Uuid().v4() {
    if (this.category == Category.algebra) {
      assert(this.subCategory != null);
    }
  }
}
