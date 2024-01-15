// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(query) => "По запросу \"${query}\" ничего не найдено";

  static String m1(seconds) => "Пропустить ${seconds}";

  static String m2(seconds) => "Видео начнется через ${seconds}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_channel": MessageLookupByLibrary.simpleMessage("О канале"),
        "about_us": MessageLookupByLibrary.simpleMessage("О нас"),
        "account": MessageLookupByLibrary.simpleMessage("Аккаунт"),
        "all": MessageLookupByLibrary.simpleMessage("Все"),
        "authentication_failure":
            MessageLookupByLibrary.simpleMessage("Ошибка аутентификации"),
        "auto": MessageLookupByLibrary.simpleMessage("Авто"),
        "autoplay": MessageLookupByLibrary.simpleMessage("Автовопроизведение"),
        "back_home":
            MessageLookupByLibrary.simpleMessage("Вернуться на главную"),
        "can_loading_text": MessageLookupByLibrary.simpleMessage(
            "Отпустите, чтобы загрузить больше"),
        "can_refresh_text":
            MessageLookupByLibrary.simpleMessage("Отпустите, чтобы обновить"),
        "can_two_level_text": MessageLookupByLibrary.simpleMessage(
            "Отпустите, чтобы войти на второй уровень"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "change_language": MessageLookupByLibrary.simpleMessage("Сменить язык"),
        "channels": MessageLookupByLibrary.simpleMessage("Каналы"),
        "channels_you_may_like": MessageLookupByLibrary.simpleMessage(
            "Каналы, которые вам понравятся"),
        "check_internet_connection": MessageLookupByLibrary.simpleMessage(
            "Проверьте подключение к интернету"),
        "colors_scheme": MessageLookupByLibrary.simpleMessage("Цветовые схемы"),
        "common_playback": MessageLookupByLibrary.simpleMessage("Обычное"),
        "confirm_sign_out": MessageLookupByLibrary.simpleMessage(
            "Вы действительно хотите выйти из аккаунта Gozle?"),
        "dark": MessageLookupByLibrary.simpleMessage("Темная"),
        "description": MessageLookupByLibrary.simpleMessage("Описание"),
        "disabled": MessageLookupByLibrary.simpleMessage("Отключено"),
        "download": MessageLookupByLibrary.simpleMessage("Скачать"),
        "download_video": MessageLookupByLibrary.simpleMessage("Скачать видео"),
        "enabled": MessageLookupByLibrary.simpleMessage("Включено"),
        "exclude_video_from_preferences": MessageLookupByLibrary.simpleMessage(
            "Видео будет исключено из ваших предпочтений"),
        "go": MessageLookupByLibrary.simpleMessage("Перейти"),
        "gozle_video": MessageLookupByLibrary.simpleMessage("Gozle Video"),
        "help": MessageLookupByLibrary.simpleMessage("Справка"),
        "hide": MessageLookupByLibrary.simpleMessage("Скрыть"),
        "history": MessageLookupByLibrary.simpleMessage("История"),
        "history_and_privacy": MessageLookupByLibrary.simpleMessage(
            "История и конфиденциальность"),
        "home": MessageLookupByLibrary.simpleMessage("Главная"),
        "idle_loading_text": MessageLookupByLibrary.simpleMessage(
            "Потяните вверх, чтобы загрузить больше"),
        "idle_refresh_text": MessageLookupByLibrary.simpleMessage(
            "Потяните вниз, чтобы обновить"),
        "install": MessageLookupByLibrary.simpleMessage("установить"),
        "internet_connection_issues": MessageLookupByLibrary.simpleMessage(
            "Связь с сервером устанавливалась слишком долго, время ожидания истекло.м"),
        "lang": MessageLookupByLibrary.simpleMessage("ru"),
        "language": MessageLookupByLibrary.simpleMessage("Язык"),
        "last": MessageLookupByLibrary.simpleMessage("Последние"),
        "latest": MessageLookupByLibrary.simpleMessage("Последние"),
        "learning_and_entertainment_service":
            MessageLookupByLibrary.simpleMessage(
                "Сервис для обучения и развлечений."),
        "leave_review": MessageLookupByLibrary.simpleMessage("Оставить отзыв"),
        "library": MessageLookupByLibrary.simpleMessage("Библиотека"),
        "light": MessageLookupByLibrary.simpleMessage("Светлая"),
        "likes": MessageLookupByLibrary.simpleMessage("Отметки \"Нравится\""),
        "load_failed_text":
            MessageLookupByLibrary.simpleMessage("Ошибка загрузки"),
        "loading_text": MessageLookupByLibrary.simpleMessage("Загрузка…"),
        "login_or_register_with_gozle_id": MessageLookupByLibrary.simpleMessage(
            "Войти или зарегистрироваться в Gozle ID"),
        "main_page": MessageLookupByLibrary.simpleMessage("Главная"),
        "manage_gozle_account":
            MessageLookupByLibrary.simpleMessage("Управление аккаунтом Gozle"),
        "more": MessageLookupByLibrary.simpleMessage("Ещё"),
        "music": MessageLookupByLibrary.simpleMessage("Музыка"),
        "new_version": MessageLookupByLibrary.simpleMessage(
            "Доступна новая версия приложения!"),
        "news": MessageLookupByLibrary.simpleMessage("Новости"),
        "no_more_text":
            MessageLookupByLibrary.simpleMessage("Больше данных нет"),
        "not_found_error":
            MessageLookupByLibrary.simpleMessage("404 НЕ НАЙДЕНО"),
        "old": MessageLookupByLibrary.simpleMessage("Старые"),
        "onlite_tv": MessageLookupByLibrary.simpleMessage("Онлайн ТВ"),
        "options": MessageLookupByLibrary.simpleMessage("Опции"),
        "play": MessageLookupByLibrary.simpleMessage("Воспроизвести"),
        "playback_conditions": MessageLookupByLibrary.simpleMessage(
            "Учитываются условия воспроизведения"),
        "playback_speed":
            MessageLookupByLibrary.simpleMessage("Скорость вопроизведения"),
        "playlists": MessageLookupByLibrary.simpleMessage("Плейлисты"),
        "popular": MessageLookupByLibrary.simpleMessage("Популярные"),
        "popular_channels":
            MessageLookupByLibrary.simpleMessage("Популярные каналы"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "purchases_and_subscriptions":
            MessageLookupByLibrary.simpleMessage("Покупки и платные подписки"),
        "purchases_subscriptions":
            MessageLookupByLibrary.simpleMessage("Покупки и платные подписки"),
        "quality": MessageLookupByLibrary.simpleMessage("Качество"),
        "query_not_found": m0,
        "recently_uploaded": MessageLookupByLibrary.simpleMessage("Недавние"),
        "recommended": MessageLookupByLibrary.simpleMessage("рекомендуется"),
        "refresh_complete_text":
            MessageLookupByLibrary.simpleMessage("Обновление завершено"),
        "refresh_failed_text":
            MessageLookupByLibrary.simpleMessage("Не удалось обновить"),
        "refreshing_text": MessageLookupByLibrary.simpleMessage("Обновление…"),
        "related_videos": MessageLookupByLibrary.simpleMessage("Похожие видео"),
        "repeat_playback":
            MessageLookupByLibrary.simpleMessage("Повтор воспроизведения"),
        "replay":
            MessageLookupByLibrary.simpleMessage("Повтор воспроизведения"),
        "report": MessageLookupByLibrary.simpleMessage("Пожаловаться"),
        "retry": MessageLookupByLibrary.simpleMessage("Повторить"),
        "screen_lock":
            MessageLookupByLibrary.simpleMessage("Блокировка экрана"),
        "search": MessageLookupByLibrary.simpleMessage("Поиск"),
        "search_channels":
            MessageLookupByLibrary.simpleMessage("Поиск каналов"),
        "search_videos": MessageLookupByLibrary.simpleMessage("Поиск видео"),
        "server_error": MessageLookupByLibrary.simpleMessage("Ошибка сервера"),
        "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
        "share": MessageLookupByLibrary.simpleMessage("Поделиться"),
        "sign_in": MessageLookupByLibrary.simpleMessage("Войти"),
        "sign_in_gozle_account":
            MessageLookupByLibrary.simpleMessage("Войти в Gozle Account"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Выйти"),
        "skip": MessageLookupByLibrary.simpleMessage("Пропустить"),
        "skip_at": m1,
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Что то пошло не так"),
        "subscribe": MessageLookupByLibrary.simpleMessage("Подписаться"),
        "subscribe_and_watch_new_interesting_videos":
            MessageLookupByLibrary.simpleMessage(
                "Подпишитесь и смотрите новые интересные видео."),
        "subscribed": MessageLookupByLibrary.simpleMessage("Подписаны"),
        "subscriptions": MessageLookupByLibrary.simpleMessage("Подписки"),
        "subtitles": MessageLookupByLibrary.simpleMessage("Субтитры"),
        "system": MessageLookupByLibrary.simpleMessage("Системная"),
        "theme": MessageLookupByLibrary.simpleMessage("Тема"),
        "then_sign_in_gozle_account": MessageLookupByLibrary.simpleMessage(
            "Тогда войдите в Gozle Account"),
        "undefined_issue": MessageLookupByLibrary.simpleMessage(
            "Что то пошло не так. Пожалуйста, попробуйте еще раз"),
        "update": MessageLookupByLibrary.simpleMessage("Обновить"),
        "update_app": MessageLookupByLibrary.simpleMessage(
            "Обновите приложение, чтобы получить новые возможности."),
        "video": MessageLookupByLibrary.simpleMessage("Видео"),
        "video_starts_at": m2,
        "videos": MessageLookupByLibrary.simpleMessage("Видео"),
        "views": MessageLookupByLibrary.simpleMessage("Просмотры"),
        "want_to_like":
            MessageLookupByLibrary.simpleMessage("Понравилось видео?"),
        "want_to_subscribe": MessageLookupByLibrary.simpleMessage(
            "Хотите записаться на этот канал?"),
        "watch_later": MessageLookupByLibrary.simpleMessage("Смотреть позже"),
        "welcome_to_gozle_video": MessageLookupByLibrary.simpleMessage(
            "Добро пожаловать в\nGozle Video !"),
        "why_need_gozle_id_account": MessageLookupByLibrary.simpleMessage(
            "Зачем нужен аккаунт Gozle ID?"),
        "without_sign_missing_features": MessageLookupByLibrary.simpleMessage(
            "Войдите в систему, чтобы разблокировать функции подписки, лайков и персонализированной истории. Без учетной записи вы упускаете эти важные взаимодействия и индивидуальный подход.")
      };
}
