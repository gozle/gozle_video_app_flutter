// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_popular_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelPopularDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Channel> oldItems) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Channel> oldItems)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Channel> oldItems)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelPopularDetailsEventCopyWith<$Res> {
  factory $ChannelPopularDetailsEventCopyWith(ChannelPopularDetailsEvent value,
          $Res Function(ChannelPopularDetailsEvent) then) =
      _$ChannelPopularDetailsEventCopyWithImpl<$Res,
          ChannelPopularDetailsEvent>;
}

/// @nodoc
class _$ChannelPopularDetailsEventCopyWithImpl<$Res,
        $Val extends ChannelPopularDetailsEvent>
    implements $ChannelPopularDetailsEventCopyWith<$Res> {
  _$ChannelPopularDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res>
    extends _$ChannelPopularDetailsEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'ChannelPopularDetailsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Channel> oldItems) loadMore,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Channel> oldItems)? loadMore,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Channel> oldItems)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ChannelPopularDetailsEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_LoadMoreCopyWith<$Res> {
  factory _$$_LoadMoreCopyWith(
          _$_LoadMore value, $Res Function(_$_LoadMore) then) =
      __$$_LoadMoreCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Channel> oldItems});
}

/// @nodoc
class __$$_LoadMoreCopyWithImpl<$Res>
    extends _$ChannelPopularDetailsEventCopyWithImpl<$Res, _$_LoadMore>
    implements _$$_LoadMoreCopyWith<$Res> {
  __$$_LoadMoreCopyWithImpl(
      _$_LoadMore _value, $Res Function(_$_LoadMore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldItems = null,
  }) {
    return _then(_$_LoadMore(
      oldItems: null == oldItems
          ? _value._oldItems
          : oldItems // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc

class _$_LoadMore implements _LoadMore {
  const _$_LoadMore({required final List<Channel> oldItems})
      : _oldItems = oldItems;

  final List<Channel> _oldItems;
  @override
  List<Channel> get oldItems {
    if (_oldItems is EqualUnmodifiableListView) return _oldItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldItems);
  }

  @override
  String toString() {
    return 'ChannelPopularDetailsEvent.loadMore(oldItems: $oldItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadMore &&
            const DeepCollectionEquality().equals(other._oldItems, _oldItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_oldItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      __$$_LoadMoreCopyWithImpl<_$_LoadMore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<Channel> oldItems) loadMore,
  }) {
    return loadMore(oldItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<Channel> oldItems)? loadMore,
  }) {
    return loadMore?.call(oldItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<Channel> oldItems)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(oldItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements ChannelPopularDetailsEvent {
  const factory _LoadMore({required final List<Channel> oldItems}) =
      _$_LoadMore;

  List<Channel> get oldItems;
  @JsonKey(ignore: true)
  _$$_LoadMoreCopyWith<_$_LoadMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChannelPopularDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldItems) loading,
    required TResult Function(List<Channel> items, bool hasReachedMax) loaded,
    required TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldItems)? loading,
    TResult? Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldItems)? loading,
    TResult Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelPopularDetailsStateCopyWith<$Res> {
  factory $ChannelPopularDetailsStateCopyWith(ChannelPopularDetailsState value,
          $Res Function(ChannelPopularDetailsState) then) =
      _$ChannelPopularDetailsStateCopyWithImpl<$Res,
          ChannelPopularDetailsState>;
}

/// @nodoc
class _$ChannelPopularDetailsStateCopyWithImpl<$Res,
        $Val extends ChannelPopularDetailsState>
    implements $ChannelPopularDetailsStateCopyWith<$Res> {
  _$ChannelPopularDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Channel> oldItems});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ChannelPopularDetailsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldItems = null,
  }) {
    return _then(_$_Loading(
      oldItems: null == oldItems
          ? _value._oldItems
          : oldItems // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required final List<Channel> oldItems})
      : _oldItems = oldItems;

  final List<Channel> _oldItems;
  @override
  List<Channel> get oldItems {
    if (_oldItems is EqualUnmodifiableListView) return _oldItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldItems);
  }

  @override
  String toString() {
    return 'ChannelPopularDetailsState.loading(oldItems: $oldItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._oldItems, _oldItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_oldItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldItems) loading,
    required TResult Function(List<Channel> items, bool hasReachedMax) loaded,
    required TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)
        error,
  }) {
    return loading(oldItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldItems)? loading,
    TResult? Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
  }) {
    return loading?.call(oldItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldItems)? loading,
    TResult Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(oldItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChannelPopularDetailsState {
  const factory _Loading({required final List<Channel> oldItems}) = _$_Loading;

  List<Channel> get oldItems;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Channel> items, bool hasReachedMax});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ChannelPopularDetailsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_Loaded(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<Channel> items, required this.hasReachedMax})
      : _items = items;

  final List<Channel> _items;
  @override
  List<Channel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final bool hasReachedMax;

  @override
  String toString() {
    return 'ChannelPopularDetailsState.loaded(items: $items, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldItems) loading,
    required TResult Function(List<Channel> items, bool hasReachedMax) loaded,
    required TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)
        error,
  }) {
    return loaded(items, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldItems)? loading,
    TResult? Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
  }) {
    return loaded?.call(items, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldItems)? loading,
    TResult Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ChannelPopularDetailsState {
  const factory _Loaded(
      {required final List<Channel> items,
      required final bool hasReachedMax}) = _$_Loaded;

  List<Channel> get items;
  bool get hasReachedMax;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Failure falure,
      List<Channel> oldItems,
      ChannelPopularDetailsEvent lastEvent});

  $ChannelPopularDetailsEventCopyWith<$Res> get lastEvent;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$ChannelPopularDetailsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? falure = null,
    Object? oldItems = null,
    Object? lastEvent = null,
  }) {
    return _then(_$_Error(
      falure: null == falure
          ? _value.falure
          : falure // ignore: cast_nullable_to_non_nullable
              as Failure,
      oldItems: null == oldItems
          ? _value._oldItems
          : oldItems // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      lastEvent: null == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as ChannelPopularDetailsEvent,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelPopularDetailsEventCopyWith<$Res> get lastEvent {
    return $ChannelPopularDetailsEventCopyWith<$Res>(_value.lastEvent, (value) {
      return _then(_value.copyWith(lastEvent: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.falure,
      required final List<Channel> oldItems,
      required this.lastEvent})
      : _oldItems = oldItems;

  @override
  final Failure falure;
  final List<Channel> _oldItems;
  @override
  List<Channel> get oldItems {
    if (_oldItems is EqualUnmodifiableListView) return _oldItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldItems);
  }

  @override
  final ChannelPopularDetailsEvent lastEvent;

  @override
  String toString() {
    return 'ChannelPopularDetailsState.error(falure: $falure, oldItems: $oldItems, lastEvent: $lastEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.falure, falure) || other.falure == falure) &&
            const DeepCollectionEquality().equals(other._oldItems, _oldItems) &&
            (identical(other.lastEvent, lastEvent) ||
                other.lastEvent == lastEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, falure,
      const DeepCollectionEquality().hash(_oldItems), lastEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Channel> oldItems) loading,
    required TResult Function(List<Channel> items, bool hasReachedMax) loaded,
    required TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)
        error,
  }) {
    return error(falure, oldItems, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Channel> oldItems)? loading,
    TResult? Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult? Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
  }) {
    return error?.call(falure, oldItems, lastEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Channel> oldItems)? loading,
    TResult Function(List<Channel> items, bool hasReachedMax)? loaded,
    TResult Function(Failure falure, List<Channel> oldItems,
            ChannelPopularDetailsEvent lastEvent)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(falure, oldItems, lastEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChannelPopularDetailsState {
  const factory _Error(
      {required final Failure falure,
      required final List<Channel> oldItems,
      required final ChannelPopularDetailsEvent lastEvent}) = _$_Error;

  Failure get falure;
  List<Channel> get oldItems;
  ChannelPopularDetailsEvent get lastEvent;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
