import 'check_info.dart';

extension CheckDetailsX on List<CheckDetails> {
  String get toResultsXml {
    final list = map((detail) {
      return detail.toResultXml;
    }).toList();

    list.insert(0, "<NewDataSet>");
    list.insert(list.length, "</NewDataSet>");

    return list.join().replaceAll(" ", "");
  }

  String get toImgsXml {
    final list = map((detail) => detail.toImgXml).toList();

    if (list.join() == "") {
      return "";
    }

    list.insert(0, "<NewDataSet>");
    list.insert(list.length, "</NewDataSet>");

    return list.join().replaceAll(" ", "");
  }

  bool get hasChecksBeenDone {
    for (final detail in this) {
      if (detail.result == "") {
        return false;
      }
    }
    return true;
  }
}
