import 'package:frontend/core/infrastructure/sembast_database.dart';
import 'package:sembast/sembast.dart';

import '../check_info_dto.dart';

class CheckInfoLocalService {
  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store("checkInfo");

  CheckInfoLocalService(this._sembastDatabase);

  Future<void> upsertCheckInfo(Map<String, dynamic> json, String tagId) async {
    await _store.record(tagId).put(
          _sembastDatabase.instance,
          json,
        );
  }

  Future<CheckInfoDTO?> findCheckInfo(String tagId) async {
    final record = await _store.record(tagId).get(_sembastDatabase.instance);
    return record == null ? null : CheckInfoDTO.fromJson(record);
  }
}
