enum ExpandableFABDirection { up, down, left, right }

extension EnumExtension on ExpandableFABDirection {
  String get value => toString().split(".")[1];
}
