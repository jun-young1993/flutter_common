// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppKeys key, Locale defaultLocale) initialize,
    required TResult Function(AppKeys key, String version) checkCanUpdate,
    required TResult Function() moveUpdateStore,
    required TResult Function(AppLanguage language) setLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult? Function(AppKeys key, String version)? checkCanUpdate,
    TResult? Function()? moveUpdateStore,
    TResult? Function(AppLanguage language)? setLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult Function(AppKeys key, String version)? checkCanUpdate,
    TResult Function()? moveUpdateStore,
    TResult Function(AppLanguage language)? setLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(CheckCanUpdateEvent value) checkCanUpdate,
    required TResult Function(UpdateEvent value) moveUpdateStore,
    required TResult Function(SetLanguageEvent value) setLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult? Function(UpdateEvent value)? moveUpdateStore,
    TResult? Function(SetLanguageEvent value)? setLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult Function(UpdateEvent value)? moveUpdateStore,
    TResult Function(SetLanguageEvent value)? setLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigEventCopyWith<$Res> {
  factory $AppConfigEventCopyWith(
          AppConfigEvent value, $Res Function(AppConfigEvent) then) =
      _$AppConfigEventCopyWithImpl<$Res, AppConfigEvent>;
}

/// @nodoc
class _$AppConfigEventCopyWithImpl<$Res, $Val extends AppConfigEvent>
    implements $AppConfigEventCopyWith<$Res> {
  _$AppConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeEventImplCopyWith<$Res> {
  factory _$$InitializeEventImplCopyWith(_$InitializeEventImpl value,
          $Res Function(_$InitializeEventImpl) then) =
      __$$InitializeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppKeys key, Locale defaultLocale});
}

/// @nodoc
class __$$InitializeEventImplCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$InitializeEventImpl>
    implements _$$InitializeEventImplCopyWith<$Res> {
  __$$InitializeEventImplCopyWithImpl(
      _$InitializeEventImpl _value, $Res Function(_$InitializeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? defaultLocale = null,
  }) {
    return _then(_$InitializeEventImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AppKeys,
      null == defaultLocale
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$InitializeEventImpl implements InitializeEvent {
  const _$InitializeEventImpl(this.key, this.defaultLocale);

  @override
  final AppKeys key;
  @override
  final Locale defaultLocale;

  @override
  String toString() {
    return 'AppConfigEvent.initialize(key: $key, defaultLocale: $defaultLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeEventImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.defaultLocale, defaultLocale) ||
                other.defaultLocale == defaultLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, defaultLocale);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeEventImplCopyWith<_$InitializeEventImpl> get copyWith =>
      __$$InitializeEventImplCopyWithImpl<_$InitializeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppKeys key, Locale defaultLocale) initialize,
    required TResult Function(AppKeys key, String version) checkCanUpdate,
    required TResult Function() moveUpdateStore,
    required TResult Function(AppLanguage language) setLanguage,
  }) {
    return initialize(key, defaultLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult? Function(AppKeys key, String version)? checkCanUpdate,
    TResult? Function()? moveUpdateStore,
    TResult? Function(AppLanguage language)? setLanguage,
  }) {
    return initialize?.call(key, defaultLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult Function(AppKeys key, String version)? checkCanUpdate,
    TResult Function()? moveUpdateStore,
    TResult Function(AppLanguage language)? setLanguage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(key, defaultLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(CheckCanUpdateEvent value) checkCanUpdate,
    required TResult Function(UpdateEvent value) moveUpdateStore,
    required TResult Function(SetLanguageEvent value) setLanguage,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult? Function(UpdateEvent value)? moveUpdateStore,
    TResult? Function(SetLanguageEvent value)? setLanguage,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult Function(UpdateEvent value)? moveUpdateStore,
    TResult Function(SetLanguageEvent value)? setLanguage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class InitializeEvent implements AppConfigEvent {
  const factory InitializeEvent(final AppKeys key, final Locale defaultLocale) =
      _$InitializeEventImpl;

  AppKeys get key;
  Locale get defaultLocale;

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeEventImplCopyWith<_$InitializeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckCanUpdateEventImplCopyWith<$Res> {
  factory _$$CheckCanUpdateEventImplCopyWith(_$CheckCanUpdateEventImpl value,
          $Res Function(_$CheckCanUpdateEventImpl) then) =
      __$$CheckCanUpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppKeys key, String version});
}

/// @nodoc
class __$$CheckCanUpdateEventImplCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$CheckCanUpdateEventImpl>
    implements _$$CheckCanUpdateEventImplCopyWith<$Res> {
  __$$CheckCanUpdateEventImplCopyWithImpl(_$CheckCanUpdateEventImpl _value,
      $Res Function(_$CheckCanUpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? version = null,
  }) {
    return _then(_$CheckCanUpdateEventImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as AppKeys,
      null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckCanUpdateEventImpl implements CheckCanUpdateEvent {
  const _$CheckCanUpdateEventImpl(this.key, this.version);

  @override
  final AppKeys key;
  @override
  final String version;

  @override
  String toString() {
    return 'AppConfigEvent.checkCanUpdate(key: $key, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCanUpdateEventImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, version);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCanUpdateEventImplCopyWith<_$CheckCanUpdateEventImpl> get copyWith =>
      __$$CheckCanUpdateEventImplCopyWithImpl<_$CheckCanUpdateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppKeys key, Locale defaultLocale) initialize,
    required TResult Function(AppKeys key, String version) checkCanUpdate,
    required TResult Function() moveUpdateStore,
    required TResult Function(AppLanguage language) setLanguage,
  }) {
    return checkCanUpdate(key, version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult? Function(AppKeys key, String version)? checkCanUpdate,
    TResult? Function()? moveUpdateStore,
    TResult? Function(AppLanguage language)? setLanguage,
  }) {
    return checkCanUpdate?.call(key, version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult Function(AppKeys key, String version)? checkCanUpdate,
    TResult Function()? moveUpdateStore,
    TResult Function(AppLanguage language)? setLanguage,
    required TResult orElse(),
  }) {
    if (checkCanUpdate != null) {
      return checkCanUpdate(key, version);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(CheckCanUpdateEvent value) checkCanUpdate,
    required TResult Function(UpdateEvent value) moveUpdateStore,
    required TResult Function(SetLanguageEvent value) setLanguage,
  }) {
    return checkCanUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult? Function(UpdateEvent value)? moveUpdateStore,
    TResult? Function(SetLanguageEvent value)? setLanguage,
  }) {
    return checkCanUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult Function(UpdateEvent value)? moveUpdateStore,
    TResult Function(SetLanguageEvent value)? setLanguage,
    required TResult orElse(),
  }) {
    if (checkCanUpdate != null) {
      return checkCanUpdate(this);
    }
    return orElse();
  }
}

abstract class CheckCanUpdateEvent implements AppConfigEvent {
  const factory CheckCanUpdateEvent(final AppKeys key, final String version) =
      _$CheckCanUpdateEventImpl;

  AppKeys get key;
  String get version;

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckCanUpdateEventImplCopyWith<_$CheckCanUpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEventImplCopyWith<$Res> {
  factory _$$UpdateEventImplCopyWith(
          _$UpdateEventImpl value, $Res Function(_$UpdateEventImpl) then) =
      __$$UpdateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateEventImplCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$UpdateEventImpl>
    implements _$$UpdateEventImplCopyWith<$Res> {
  __$$UpdateEventImplCopyWithImpl(
      _$UpdateEventImpl _value, $Res Function(_$UpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateEventImpl implements UpdateEvent {
  const _$UpdateEventImpl();

  @override
  String toString() {
    return 'AppConfigEvent.moveUpdateStore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppKeys key, Locale defaultLocale) initialize,
    required TResult Function(AppKeys key, String version) checkCanUpdate,
    required TResult Function() moveUpdateStore,
    required TResult Function(AppLanguage language) setLanguage,
  }) {
    return moveUpdateStore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult? Function(AppKeys key, String version)? checkCanUpdate,
    TResult? Function()? moveUpdateStore,
    TResult? Function(AppLanguage language)? setLanguage,
  }) {
    return moveUpdateStore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult Function(AppKeys key, String version)? checkCanUpdate,
    TResult Function()? moveUpdateStore,
    TResult Function(AppLanguage language)? setLanguage,
    required TResult orElse(),
  }) {
    if (moveUpdateStore != null) {
      return moveUpdateStore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(CheckCanUpdateEvent value) checkCanUpdate,
    required TResult Function(UpdateEvent value) moveUpdateStore,
    required TResult Function(SetLanguageEvent value) setLanguage,
  }) {
    return moveUpdateStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult? Function(UpdateEvent value)? moveUpdateStore,
    TResult? Function(SetLanguageEvent value)? setLanguage,
  }) {
    return moveUpdateStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult Function(UpdateEvent value)? moveUpdateStore,
    TResult Function(SetLanguageEvent value)? setLanguage,
    required TResult orElse(),
  }) {
    if (moveUpdateStore != null) {
      return moveUpdateStore(this);
    }
    return orElse();
  }
}

abstract class UpdateEvent implements AppConfigEvent {
  const factory UpdateEvent() = _$UpdateEventImpl;
}

/// @nodoc
abstract class _$$SetLanguageEventImplCopyWith<$Res> {
  factory _$$SetLanguageEventImplCopyWith(_$SetLanguageEventImpl value,
          $Res Function(_$SetLanguageEventImpl) then) =
      __$$SetLanguageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLanguage language});
}

/// @nodoc
class __$$SetLanguageEventImplCopyWithImpl<$Res>
    extends _$AppConfigEventCopyWithImpl<$Res, _$SetLanguageEventImpl>
    implements _$$SetLanguageEventImplCopyWith<$Res> {
  __$$SetLanguageEventImplCopyWithImpl(_$SetLanguageEventImpl _value,
      $Res Function(_$SetLanguageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$SetLanguageEventImpl(
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as AppLanguage,
    ));
  }
}

/// @nodoc

class _$SetLanguageEventImpl implements SetLanguageEvent {
  const _$SetLanguageEventImpl(this.language);

  @override
  final AppLanguage language;

  @override
  String toString() {
    return 'AppConfigEvent.setLanguage(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLanguageEventImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLanguageEventImplCopyWith<_$SetLanguageEventImpl> get copyWith =>
      __$$SetLanguageEventImplCopyWithImpl<_$SetLanguageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppKeys key, Locale defaultLocale) initialize,
    required TResult Function(AppKeys key, String version) checkCanUpdate,
    required TResult Function() moveUpdateStore,
    required TResult Function(AppLanguage language) setLanguage,
  }) {
    return setLanguage(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult? Function(AppKeys key, String version)? checkCanUpdate,
    TResult? Function()? moveUpdateStore,
    TResult? Function(AppLanguage language)? setLanguage,
  }) {
    return setLanguage?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppKeys key, Locale defaultLocale)? initialize,
    TResult Function(AppKeys key, String version)? checkCanUpdate,
    TResult Function()? moveUpdateStore,
    TResult Function(AppLanguage language)? setLanguage,
    required TResult orElse(),
  }) {
    if (setLanguage != null) {
      return setLanguage(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeEvent value) initialize,
    required TResult Function(CheckCanUpdateEvent value) checkCanUpdate,
    required TResult Function(UpdateEvent value) moveUpdateStore,
    required TResult Function(SetLanguageEvent value) setLanguage,
  }) {
    return setLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeEvent value)? initialize,
    TResult? Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult? Function(UpdateEvent value)? moveUpdateStore,
    TResult? Function(SetLanguageEvent value)? setLanguage,
  }) {
    return setLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeEvent value)? initialize,
    TResult Function(CheckCanUpdateEvent value)? checkCanUpdate,
    TResult Function(UpdateEvent value)? moveUpdateStore,
    TResult Function(SetLanguageEvent value)? setLanguage,
    required TResult orElse(),
  }) {
    if (setLanguage != null) {
      return setLanguage(this);
    }
    return orElse();
  }
}

abstract class SetLanguageEvent implements AppConfigEvent {
  const factory SetLanguageEvent(final AppLanguage language) =
      _$SetLanguageEventImpl;

  AppLanguage get language;

  /// Create a copy of AppConfigEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLanguageEventImplCopyWith<_$SetLanguageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
