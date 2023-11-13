import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/features/search/domain/use_cases/seach_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'search_history_state.dart';
part 'search_history_cubit.freezed.dart';

class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  SearchHistoryCubit() : super(const SearchHistoryState.loading());

  SearchUseCases get searchUseCases => locator<SearchUseCases>();

  Future<void> restore() async {
    final searchHistory = searchUseCases.restoreSearchHistory();

    emit(SearchHistoryState.loaded(history: searchHistory));
  }

  Future<void> add({required String history}) async {
    if (history.isEmpty) return;

    final searchHistory = searchUseCases.restoreSearchHistory();

    searchHistory.insert(0, history);

    searchUseCases.saveSearchHistory(searchHistory: searchHistory);

    emit(SearchHistoryState.loaded(history: searchHistory));
  }

  Future<void> remove({required String history}) async {
    final searchHistory = searchUseCases.restoreSearchHistory();

    searchHistory.removeWhere((element) => element == history);

    searchUseCases.saveSearchHistory(searchHistory: searchHistory);

    emit(SearchHistoryState.loaded(history: searchHistory));
  }

  Future<void> filter({required String filter}) async {
    final searchHistory = searchUseCases.restoreSearchHistory();
    List<String> filteredHistory;

    if (filter.isNotEmpty) {
      filteredHistory = searchHistory.reversed.where((term) => term.startsWith(filter)).toList();
    } else {
      filteredHistory = searchHistory.reversed.toList();
    }
    emit(SearchHistoryState.loaded(history: filteredHistory));
  }

  Future<void> clear() async {
    searchUseCases.saveSearchHistory(searchHistory: []);

    emit(const SearchHistoryState.loaded(history: []));
  }
}
