import 'package:video_gozle/features/check_updates/domain/models/update_info_model.dart';

abstract class CheckUpdatesRepository {
  Future<UpdateInfo> getUpdateInfo();
}
