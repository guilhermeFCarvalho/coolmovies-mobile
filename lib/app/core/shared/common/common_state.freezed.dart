// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonState<F, S> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(S data)? loadSuccess,
    TResult? Function(F failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonStateInitial<F, S> value)? initial,
    TResult? Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult? Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult? Function(CommonStateLoadFailure<F, S> value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateCopyWith<F, S, $Res> {
  factory $CommonStateCopyWith(
          CommonState<F, S> value, $Res Function(CommonState<F, S>) then) =
      _$CommonStateCopyWithImpl<F, S, $Res, CommonState<F, S>>;
}

/// @nodoc
class _$CommonStateCopyWithImpl<F, S, $Res, $Val extends CommonState<F, S>>
    implements $CommonStateCopyWith<F, S, $Res> {
  _$CommonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CommonStateInitialImplCopyWith<F, S, $Res> {
  factory _$$CommonStateInitialImplCopyWith(
          _$CommonStateInitialImpl<F, S> value,
          $Res Function(_$CommonStateInitialImpl<F, S>) then) =
      __$$CommonStateInitialImplCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class __$$CommonStateInitialImplCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res,
        _$CommonStateInitialImpl<F, S>>
    implements _$$CommonStateInitialImplCopyWith<F, S, $Res> {
  __$$CommonStateInitialImplCopyWithImpl(_$CommonStateInitialImpl<F, S> _value,
      $Res Function(_$CommonStateInitialImpl<F, S>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommonStateInitialImpl<F, S> implements CommonStateInitial<F, S> {
  const _$CommonStateInitialImpl();

  @override
  String toString() {
    return 'CommonState<$F, $S>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateInitialImpl<F, S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(S data)? loadSuccess,
    TResult? Function(F failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonStateInitial<F, S> value)? initial,
    TResult? Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult? Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult? Function(CommonStateLoadFailure<F, S> value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CommonStateInitial<F, S> implements CommonState<F, S> {
  const factory CommonStateInitial() = _$CommonStateInitialImpl<F, S>;
}

/// @nodoc
abstract class _$$CommonStateLoadInProgressImplCopyWith<F, S, $Res> {
  factory _$$CommonStateLoadInProgressImplCopyWith(
          _$CommonStateLoadInProgressImpl<F, S> value,
          $Res Function(_$CommonStateLoadInProgressImpl<F, S>) then) =
      __$$CommonStateLoadInProgressImplCopyWithImpl<F, S, $Res>;
}

/// @nodoc
class __$$CommonStateLoadInProgressImplCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res,
        _$CommonStateLoadInProgressImpl<F, S>>
    implements _$$CommonStateLoadInProgressImplCopyWith<F, S, $Res> {
  __$$CommonStateLoadInProgressImplCopyWithImpl(
      _$CommonStateLoadInProgressImpl<F, S> _value,
      $Res Function(_$CommonStateLoadInProgressImpl<F, S>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommonStateLoadInProgressImpl<F, S>
    implements CommonStateLoadInProgress<F, S> {
  const _$CommonStateLoadInProgressImpl();

  @override
  String toString() {
    return 'CommonState<$F, $S>.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateLoadInProgressImpl<F, S>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(S data)? loadSuccess,
    TResult? Function(F failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonStateInitial<F, S> value)? initial,
    TResult? Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult? Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult? Function(CommonStateLoadFailure<F, S> value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoadInProgress<F, S> implements CommonState<F, S> {
  const factory CommonStateLoadInProgress() =
      _$CommonStateLoadInProgressImpl<F, S>;
}

/// @nodoc
abstract class _$$CommonStateLoadSuccessImplCopyWith<F, S, $Res> {
  factory _$$CommonStateLoadSuccessImplCopyWith(
          _$CommonStateLoadSuccessImpl<F, S> value,
          $Res Function(_$CommonStateLoadSuccessImpl<F, S>) then) =
      __$$CommonStateLoadSuccessImplCopyWithImpl<F, S, $Res>;
  @useResult
  $Res call({S data});
}

/// @nodoc
class __$$CommonStateLoadSuccessImplCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res,
        _$CommonStateLoadSuccessImpl<F, S>>
    implements _$$CommonStateLoadSuccessImplCopyWith<F, S, $Res> {
  __$$CommonStateLoadSuccessImplCopyWithImpl(
      _$CommonStateLoadSuccessImpl<F, S> _value,
      $Res Function(_$CommonStateLoadSuccessImpl<F, S>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CommonStateLoadSuccessImpl<F, S>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$CommonStateLoadSuccessImpl<F, S>
    implements CommonStateLoadSuccess<F, S> {
  const _$CommonStateLoadSuccessImpl(this.data);

  @override
  final S data;

  @override
  String toString() {
    return 'CommonState<$F, $S>.loadSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateLoadSuccessImpl<F, S> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateLoadSuccessImplCopyWith<F, S,
          _$CommonStateLoadSuccessImpl<F, S>>
      get copyWith => __$$CommonStateLoadSuccessImplCopyWithImpl<F, S,
          _$CommonStateLoadSuccessImpl<F, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return loadSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(S data)? loadSuccess,
    TResult? Function(F failure)? loadFailure,
  }) {
    return loadSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonStateInitial<F, S> value)? initial,
    TResult? Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult? Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult? Function(CommonStateLoadFailure<F, S> value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoadSuccess<F, S> implements CommonState<F, S> {
  const factory CommonStateLoadSuccess(final S data) =
      _$CommonStateLoadSuccessImpl<F, S>;

  S get data;
  @JsonKey(ignore: true)
  _$$CommonStateLoadSuccessImplCopyWith<F, S,
          _$CommonStateLoadSuccessImpl<F, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommonStateLoadFailureImplCopyWith<F, S, $Res> {
  factory _$$CommonStateLoadFailureImplCopyWith(
          _$CommonStateLoadFailureImpl<F, S> value,
          $Res Function(_$CommonStateLoadFailureImpl<F, S>) then) =
      __$$CommonStateLoadFailureImplCopyWithImpl<F, S, $Res>;
  @useResult
  $Res call({F failure});
}

/// @nodoc
class __$$CommonStateLoadFailureImplCopyWithImpl<F, S, $Res>
    extends _$CommonStateCopyWithImpl<F, S, $Res,
        _$CommonStateLoadFailureImpl<F, S>>
    implements _$$CommonStateLoadFailureImplCopyWith<F, S, $Res> {
  __$$CommonStateLoadFailureImplCopyWithImpl(
      _$CommonStateLoadFailureImpl<F, S> _value,
      $Res Function(_$CommonStateLoadFailureImpl<F, S>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$CommonStateLoadFailureImpl<F, S>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$CommonStateLoadFailureImpl<F, S>
    implements CommonStateLoadFailure<F, S> {
  const _$CommonStateLoadFailureImpl(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'CommonState<$F, $S>.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonStateLoadFailureImpl<F, S> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonStateLoadFailureImplCopyWith<F, S,
          _$CommonStateLoadFailureImpl<F, S>>
      get copyWith => __$$CommonStateLoadFailureImplCopyWithImpl<F, S,
          _$CommonStateLoadFailureImpl<F, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(S data) loadSuccess,
    required TResult Function(F failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(S data)? loadSuccess,
    TResult? Function(F failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(S data)? loadSuccess,
    TResult Function(F failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonStateInitial<F, S> value) initial,
    required TResult Function(CommonStateLoadInProgress<F, S> value)
        loadInProgress,
    required TResult Function(CommonStateLoadSuccess<F, S> value) loadSuccess,
    required TResult Function(CommonStateLoadFailure<F, S> value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonStateInitial<F, S> value)? initial,
    TResult? Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult? Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult? Function(CommonStateLoadFailure<F, S> value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonStateInitial<F, S> value)? initial,
    TResult Function(CommonStateLoadInProgress<F, S> value)? loadInProgress,
    TResult Function(CommonStateLoadSuccess<F, S> value)? loadSuccess,
    TResult Function(CommonStateLoadFailure<F, S> value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class CommonStateLoadFailure<F, S> implements CommonState<F, S> {
  const factory CommonStateLoadFailure(final F failure) =
      _$CommonStateLoadFailureImpl<F, S>;

  F get failure;
  @JsonKey(ignore: true)
  _$$CommonStateLoadFailureImplCopyWith<F, S,
          _$CommonStateLoadFailureImpl<F, S>>
      get copyWith => throw _privateConstructorUsedError;
}
