import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_gozle/generated/l10n.dart';

abstract class AppUtils {
  static void shareVideo({required String videoId}) {
    Share.share('https://gozle.com.tm/ru/videos/watch/$videoId');
  }

  // исключетельно для русского языка
  static String pluralize(int num, String form1, String form2, String form3) {
    num = num % 100;
    if (num >= 11 && num <= 19) {
      return form3;
    } else {
      num = num % 10;
      if (num == 1) {
        return form1;
      } else if (num >= 2 && num <= 4) {
        return form2;
      } else {
        return form3;
      }
    }
  }

  // 2023-10-23 => 10 дней назад
  static String timeAgo(String? date) {
    // Дата публикации видео
    DateTime videoDate = DateTime.parse(date ?? "2023-10-23");

    // Текущая дата
    DateTime currentDate = DateTime.now();

    // Вычисляем разницу в годах, месяцах и днях
    int years = currentDate.year - videoDate.year;
    int months = currentDate.month - videoDate.month;
    int days = currentDate.day - videoDate.day;

    if (days < 0) {
      months--;
      days += DateTime(videoDate.year, videoDate.month + 1, 0).day;
    }

    if (months < 0) {
      years--;
      months += 12;
    }

    // Выводим разницу
    String output = "";

    final lang = S.current.lang;
    if (lang == 'ru') {
      if (years >= 1) {
        output += "$years ${pluralize(years, 'год', 'года', 'лет')} назад";
      } else if (months >= 1) {
        output += "$months ${pluralize(months, 'месяц', 'месяца', 'месяцев')} назад";
      } else {
        if (days == 0) {
          output = "Cегодня";
        } else if (days == 1) {
          output = "Вчера";
        } else {
          output += "$days ${pluralize(days, 'день', 'дня', 'дней')} назад";
        }
      }
    } else if (lang == 'tk') {
      if (years >= 1) {
        output += "$years ýyl ozal";
      } else if (months >= 1) {
        output += "$months aý ozal";
      } else {
        if (days == 0) {
          output = "Şu gün";
        } else if (days == 1) {
          output = "Düýn";
        } else {
          output += "$days gün ozal";
        }
      }
    } else {
      if (years >= 1) {
        if (years > 1) {
          output += "$years years ago";
        } else {
          output += "$years year ago";
        }
      } else if (months >= 1) {
        if (months > 1) {
          output += "$years months ago";
        } else {
          output += "$years month ago";
        }
      } else {
        if (days == 0) {
          output = "Today";
        } else if (days == 1) {
          output = "Yesterday";
        } else {
          output += "$days days ago";
        }
      }
    }

    return output;
  }

  // Duration(hours: 1) => 1:00:00
  static String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");

    String hours = twoDigits(duration.inHours);
    int minutePart = duration.inMinutes.remainder(60);
    int secondPart = duration.inSeconds.remainder(60);

    if (duration.inHours > 0) {
      return "$hours:${twoDigits(minutePart)}:${twoDigits(secondPart)}";
    } else if (duration.inMinutes > 0) {
      return "${twoDigits(minutePart)}:${twoDigits(secondPart)}";
    } else {
      return "00:${twoDigits(secondPart)}";
    }
  }

  // 10000 => 1K
  static String compact(int count) {
    try {
      return NumberFormat.compact(locale: S.current.lang).format(count);
    } catch (error) {
      return NumberFormat.compact(locale: 'en').format(count).replaceAll("K", " müň");
    }
  }

  // 10 тыс. просмотров
  static String formatViews(int? views) {
    switch (S.current.lang) {
      case 'tk':
        return '${compact(views ?? 0)} ${S.current.views.toLowerCase()}';
      case 'en':
        return '${compact(views ?? 0)} ${S.current.views.toLowerCase()}';
      case 'ru':
        {
          final formattedNumber = compact(views ?? 0);
          views ??= 0;
          if (views >= 1000) {
            return '$formattedNumber просмотров';
          } else if (views % 10 == 1 && views % 100 != 11) {
            return '$formattedNumber просмотр';
          } else if (views % 10 >= 2 && views % 10 <= 4 && (views % 100 < 10 || views % 100 >= 20)) {
            return '$formattedNumber просмотра';
          } else {
            return '$formattedNumber просмотров';
          }
        }
      default:
        return '';
    }
  }
}

class CustomCacheManager {
  static const key = 'customCacheKey';
  static CacheManager instance = CacheManager(
    Config(
      key,
      stalePeriod: const Duration(hours: 1),
    ),
  );
}
