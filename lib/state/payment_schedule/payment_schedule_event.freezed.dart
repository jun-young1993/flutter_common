// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_schedule_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentScheduleEvent {
  String get loanId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loanId) initialize,
    required TResult Function(String loanId) findAll,
    required TResult Function(String loanId) addSkip,
    required TResult Function(String loanId, String order) setOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loanId)? initialize,
    TResult? Function(String loanId)? findAll,
    TResult? Function(String loanId)? addSkip,
    TResult? Function(String loanId, String order)? setOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loanId)? initialize,
    TResult Function(String loanId)? findAll,
    TResult Function(String loanId)? addSkip,
    TResult Function(String loanId, String order)? setOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(SetOrder value) setOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(SetOrder value)? setOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(SetOrder value)? setOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentScheduleEventCopyWith<PaymentScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentScheduleEventCopyWith<$Res> {
  factory $PaymentScheduleEventCopyWith(PaymentScheduleEvent value,
          $Res Function(PaymentScheduleEvent) then) =
      _$PaymentScheduleEventCopyWithImpl<$Res, PaymentScheduleEvent>;
  @useResult
  $Res call({String loanId});
}

/// @nodoc
class _$PaymentScheduleEventCopyWithImpl<$Res,
        $Val extends PaymentScheduleEvent>
    implements $PaymentScheduleEventCopyWith<$Res> {
  _$PaymentScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
  }) {
    return _then(_value.copyWith(
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res>
    implements $PaymentScheduleEventCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loanId});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$PaymentScheduleEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
  }) {
    return _then(_$InitializeImpl(
      null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl(this.loanId);

  @override
  final String loanId;

  @override
  String toString() {
    return 'PaymentScheduleEvent.initialize(loanId: $loanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.loanId, loanId) || other.loanId == loanId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loanId);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loanId) initialize,
    required TResult Function(String loanId) findAll,
    required TResult Function(String loanId) addSkip,
    required TResult Function(String loanId, String order) setOrder,
  }) {
    return initialize(loanId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loanId)? initialize,
    TResult? Function(String loanId)? findAll,
    TResult? Function(String loanId)? addSkip,
    TResult? Function(String loanId, String order)? setOrder,
  }) {
    return initialize?.call(loanId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loanId)? initialize,
    TResult Function(String loanId)? findAll,
    TResult Function(String loanId)? addSkip,
    TResult Function(String loanId, String order)? setOrder,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(loanId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(SetOrder value) setOrder,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(SetOrder value)? setOrder,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(SetOrder value)? setOrder,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements PaymentScheduleEvent {
  const factory Initialize(final String loanId) = _$InitializeImpl;

  @override
  String get loanId;

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FindAllImplCopyWith<$Res>
    implements $PaymentScheduleEventCopyWith<$Res> {
  factory _$$FindAllImplCopyWith(
          _$FindAllImpl value, $Res Function(_$FindAllImpl) then) =
      __$$FindAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loanId});
}

/// @nodoc
class __$$FindAllImplCopyWithImpl<$Res>
    extends _$PaymentScheduleEventCopyWithImpl<$Res, _$FindAllImpl>
    implements _$$FindAllImplCopyWith<$Res> {
  __$$FindAllImplCopyWithImpl(
      _$FindAllImpl _value, $Res Function(_$FindAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
  }) {
    return _then(_$FindAllImpl(
      null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FindAllImpl implements FindAll {
  const _$FindAllImpl(this.loanId);

  @override
  final String loanId;

  @override
  String toString() {
    return 'PaymentScheduleEvent.findAll(loanId: $loanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindAllImpl &&
            (identical(other.loanId, loanId) || other.loanId == loanId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loanId);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FindAllImplCopyWith<_$FindAllImpl> get copyWith =>
      __$$FindAllImplCopyWithImpl<_$FindAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loanId) initialize,
    required TResult Function(String loanId) findAll,
    required TResult Function(String loanId) addSkip,
    required TResult Function(String loanId, String order) setOrder,
  }) {
    return findAll(loanId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loanId)? initialize,
    TResult? Function(String loanId)? findAll,
    TResult? Function(String loanId)? addSkip,
    TResult? Function(String loanId, String order)? setOrder,
  }) {
    return findAll?.call(loanId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loanId)? initialize,
    TResult Function(String loanId)? findAll,
    TResult Function(String loanId)? addSkip,
    TResult Function(String loanId, String order)? setOrder,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(loanId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(SetOrder value) setOrder,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(SetOrder value)? setOrder,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(SetOrder value)? setOrder,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class FindAll implements PaymentScheduleEvent {
  const factory FindAll(final String loanId) = _$FindAllImpl;

  @override
  String get loanId;

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FindAllImplCopyWith<_$FindAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSkipImplCopyWith<$Res>
    implements $PaymentScheduleEventCopyWith<$Res> {
  factory _$$AddSkipImplCopyWith(
          _$AddSkipImpl value, $Res Function(_$AddSkipImpl) then) =
      __$$AddSkipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loanId});
}

/// @nodoc
class __$$AddSkipImplCopyWithImpl<$Res>
    extends _$PaymentScheduleEventCopyWithImpl<$Res, _$AddSkipImpl>
    implements _$$AddSkipImplCopyWith<$Res> {
  __$$AddSkipImplCopyWithImpl(
      _$AddSkipImpl _value, $Res Function(_$AddSkipImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
  }) {
    return _then(_$AddSkipImpl(
      null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSkipImpl implements AddSkip {
  const _$AddSkipImpl(this.loanId);

  @override
  final String loanId;

  @override
  String toString() {
    return 'PaymentScheduleEvent.addSkip(loanId: $loanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSkipImpl &&
            (identical(other.loanId, loanId) || other.loanId == loanId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loanId);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSkipImplCopyWith<_$AddSkipImpl> get copyWith =>
      __$$AddSkipImplCopyWithImpl<_$AddSkipImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loanId) initialize,
    required TResult Function(String loanId) findAll,
    required TResult Function(String loanId) addSkip,
    required TResult Function(String loanId, String order) setOrder,
  }) {
    return addSkip(loanId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loanId)? initialize,
    TResult? Function(String loanId)? findAll,
    TResult? Function(String loanId)? addSkip,
    TResult? Function(String loanId, String order)? setOrder,
  }) {
    return addSkip?.call(loanId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loanId)? initialize,
    TResult Function(String loanId)? findAll,
    TResult Function(String loanId)? addSkip,
    TResult Function(String loanId, String order)? setOrder,
    required TResult orElse(),
  }) {
    if (addSkip != null) {
      return addSkip(loanId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(SetOrder value) setOrder,
  }) {
    return addSkip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(SetOrder value)? setOrder,
  }) {
    return addSkip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(SetOrder value)? setOrder,
    required TResult orElse(),
  }) {
    if (addSkip != null) {
      return addSkip(this);
    }
    return orElse();
  }
}

abstract class AddSkip implements PaymentScheduleEvent {
  const factory AddSkip(final String loanId) = _$AddSkipImpl;

  @override
  String get loanId;

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSkipImplCopyWith<_$AddSkipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetOrderImplCopyWith<$Res>
    implements $PaymentScheduleEventCopyWith<$Res> {
  factory _$$SetOrderImplCopyWith(
          _$SetOrderImpl value, $Res Function(_$SetOrderImpl) then) =
      __$$SetOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loanId, String order});
}

/// @nodoc
class __$$SetOrderImplCopyWithImpl<$Res>
    extends _$PaymentScheduleEventCopyWithImpl<$Res, _$SetOrderImpl>
    implements _$$SetOrderImplCopyWith<$Res> {
  __$$SetOrderImplCopyWithImpl(
      _$SetOrderImpl _value, $Res Function(_$SetOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanId = null,
    Object? order = null,
  }) {
    return _then(_$SetOrderImpl(
      null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetOrderImpl implements SetOrder {
  const _$SetOrderImpl(this.loanId, this.order);

  @override
  final String loanId;
  @override
  final String order;

  @override
  String toString() {
    return 'PaymentScheduleEvent.setOrder(loanId: $loanId, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetOrderImpl &&
            (identical(other.loanId, loanId) || other.loanId == loanId) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loanId, order);

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetOrderImplCopyWith<_$SetOrderImpl> get copyWith =>
      __$$SetOrderImplCopyWithImpl<_$SetOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loanId) initialize,
    required TResult Function(String loanId) findAll,
    required TResult Function(String loanId) addSkip,
    required TResult Function(String loanId, String order) setOrder,
  }) {
    return setOrder(loanId, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String loanId)? initialize,
    TResult? Function(String loanId)? findAll,
    TResult? Function(String loanId)? addSkip,
    TResult? Function(String loanId, String order)? setOrder,
  }) {
    return setOrder?.call(loanId, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loanId)? initialize,
    TResult Function(String loanId)? findAll,
    TResult Function(String loanId)? addSkip,
    TResult Function(String loanId, String order)? setOrder,
    required TResult orElse(),
  }) {
    if (setOrder != null) {
      return setOrder(loanId, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FindAll value) findAll,
    required TResult Function(AddSkip value) addSkip,
    required TResult Function(SetOrder value) setOrder,
  }) {
    return setOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FindAll value)? findAll,
    TResult? Function(AddSkip value)? addSkip,
    TResult? Function(SetOrder value)? setOrder,
  }) {
    return setOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FindAll value)? findAll,
    TResult Function(AddSkip value)? addSkip,
    TResult Function(SetOrder value)? setOrder,
    required TResult orElse(),
  }) {
    if (setOrder != null) {
      return setOrder(this);
    }
    return orElse();
  }
}

abstract class SetOrder implements PaymentScheduleEvent {
  const factory SetOrder(final String loanId, final String order) =
      _$SetOrderImpl;

  @override
  String get loanId;
  String get order;

  /// Create a copy of PaymentScheduleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetOrderImplCopyWith<_$SetOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
