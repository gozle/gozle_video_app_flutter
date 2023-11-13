part of 'search_history_cubit.dart';

@freezed
class SearchHistoryState with _$SearchHistoryState {
  const factory SearchHistoryState.loading() = _Loading;
  const factory SearchHistoryState.loaded({required List<String> history}) = _Loaded;
}
