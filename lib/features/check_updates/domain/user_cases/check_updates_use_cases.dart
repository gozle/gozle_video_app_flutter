import 'package:video_gozle/features/check_updates/domain/models/update_info_model.dart';
import 'package:video_gozle/features/check_updates/domain/repository/check_updates_repository.dart';

class CheckUpdatesUseCases {
  final CheckUpdatesRepository checkUpdatesRepository;

  CheckUpdatesUseCases({required this.checkUpdatesRepository});

  Future<UpdateInfo> getUpdateInfo() async {
    return checkUpdatesRepository.getUpdateInfo();
  }
}
