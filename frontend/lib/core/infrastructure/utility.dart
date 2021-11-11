int createUniqueId() => DateTime.now().millisecondsSinceEpoch.remainder(100000);

int stringToInt(String noStr) => int.tryParse(noStr) ?? -1;

DateTime dateStringsToDateTime(String dateString) {
  return DateTime.parse(dateString);
}
