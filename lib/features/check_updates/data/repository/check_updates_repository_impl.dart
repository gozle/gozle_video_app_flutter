import 'package:video_gozle/features/check_updates/data/datasource/check_updates_api_client.dart';
import 'package:video_gozle/features/check_updates/domain/models/update_info_model.dart';
import 'package:video_gozle/features/check_updates/domain/repository/check_updates_repository.dart';

class CheckUpdatesRepositoryImpl extends CheckUpdatesRepository {
  final CheckUpdatesApiClient checkUpdatesApiClient;

  CheckUpdatesRepositoryImpl({required this.checkUpdatesApiClient});

  @override
  Future<UpdateInfo> getUpdateInfo() async {
    return await checkUpdatesApiClient.getUpdateInfo();
  }
}
