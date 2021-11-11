import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/domain/added_image.dart';
import 'package:frontend/menus/core/domain/progress_status.dart';

part 'board.freezed.dart';

@freezed
class Board with _$Board {
  const Board._();
  const factory Board({
    required BoardProgressStatus status,
    required List<BoardItem> notice,
    required List<BoardItem> safety,
  }) = _Board;
}

@freezed
class BoardProgressStatus with _$BoardProgressStatus {
  const BoardProgressStatus._();
  const factory BoardProgressStatus({
    required ProgressStatus building,
    required ProgressStatus line,
    required ProgressStatus forklift,
  }) = _BoardProgressStatus;
}

@freezed
class BoardItem with _$BoardItem {
  const BoardItem._();
  const factory BoardItem({
    required String board,
    required String key,
    required String compCd,
    required String topFixYn,
    required String createdBy,
    required DateTime createdDate,
    required String title,
    required String contents,
    required String updatedBy,
    required DateTime updatedDate,
    required bool isInUse,
    required List<AddedImage> images,
  }) = _BoardItem;

  factory BoardItem.init() => BoardItem(
        board: "",
        key: "",
        compCd: "",
        topFixYn: "",
        createdBy: "",
        createdDate: DateTime.now(),
        title: "",
        contents: "",
        updatedBy: "",
        updatedDate: DateTime.now(),
        isInUse: true,
        images: [],
      );

  String get toImgXml {
    if (images.isEmpty) {
      return "";
    }

    final imagesXmlList = images
        .mapIndexed(
          (index, element) => '''
              <Table1>
                <B_PK>${images[index].key}</B_PK>
                <ATT_NO>${images[index].no}</ATT_NO>
                <ATT_URL>${images[index].name}</ATT_URL>
                <RMK>RMK</RMK>
              </Table1>
          '''
              .replaceAll(" ", "")
              .replaceAll("\n", ""),
        )
        .toList()
          ..insert(images.length, "</NewDataSet>")
          ..insert(0, "<NewDataSet>");

    return imagesXmlList.join();
  }
}
