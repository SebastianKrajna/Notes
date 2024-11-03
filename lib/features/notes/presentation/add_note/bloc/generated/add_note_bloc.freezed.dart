// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../add_note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddNoteEvent {}

/// @nodoc
abstract class $AddNoteEventCopyWith<$Res> {
  factory $AddNoteEventCopyWith(
          AddNoteEvent value, $Res Function(AddNoteEvent) then) =
      _$AddNoteEventCopyWithImpl<$Res, AddNoteEvent>;
}

/// @nodoc
class _$AddNoteEventCopyWithImpl<$Res, $Val extends AddNoteEvent>
    implements $AddNoteEventCopyWith<$Res> {
  _$AddNoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddNoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddNoteContentChangedImplCopyWith<$Res> {
  factory _$$AddNoteContentChangedImplCopyWith(
          _$AddNoteContentChangedImpl value,
          $Res Function(_$AddNoteContentChangedImpl) then) =
      __$$AddNoteContentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$AddNoteContentChangedImplCopyWithImpl<$Res>
    extends _$AddNoteEventCopyWithImpl<$Res, _$AddNoteContentChangedImpl>
    implements _$$AddNoteContentChangedImplCopyWith<$Res> {
  __$$AddNoteContentChangedImplCopyWithImpl(_$AddNoteContentChangedImpl _value,
      $Res Function(_$AddNoteContentChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$AddNoteContentChangedImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddNoteContentChangedImpl implements AddNoteContentChanged {
  const _$AddNoteContentChangedImpl(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'AddNoteEvent.contentChanged(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteContentChangedImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of AddNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteContentChangedImplCopyWith<_$AddNoteContentChangedImpl>
      get copyWith => __$$AddNoteContentChangedImplCopyWithImpl<
          _$AddNoteContentChangedImpl>(this, _$identity);
}

abstract class AddNoteContentChanged implements AddNoteEvent {
  const factory AddNoteContentChanged(final String content) =
      _$AddNoteContentChangedImpl;

  String get content;

  /// Create a copy of AddNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNoteContentChangedImplCopyWith<_$AddNoteContentChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNoteSubmittedImplCopyWith<$Res> {
  factory _$$AddNoteSubmittedImplCopyWith(_$AddNoteSubmittedImpl value,
          $Res Function(_$AddNoteSubmittedImpl) then) =
      __$$AddNoteSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddNoteSubmittedImplCopyWithImpl<$Res>
    extends _$AddNoteEventCopyWithImpl<$Res, _$AddNoteSubmittedImpl>
    implements _$$AddNoteSubmittedImplCopyWith<$Res> {
  __$$AddNoteSubmittedImplCopyWithImpl(_$AddNoteSubmittedImpl _value,
      $Res Function(_$AddNoteSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddNoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddNoteSubmittedImpl implements AddNoteSubmitted {
  const _$AddNoteSubmittedImpl();

  @override
  String toString() {
    return 'AddNoteEvent.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddNoteSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class AddNoteSubmitted implements AddNoteEvent {
  const factory AddNoteSubmitted() = _$AddNoteSubmittedImpl;
}

/// @nodoc
mixin _$AddNoteState {
  AddNoteStatus get status => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AddNoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddNoteStateCopyWith<AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateCopyWith(
          AddNoteState value, $Res Function(AddNoteState) then) =
      _$AddNoteStateCopyWithImpl<$Res, AddNoteState>;
  @useResult
  $Res call({AddNoteStatus status, String content, String? errorMessage});
}

/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res, $Val extends AddNoteState>
    implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddNoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddNoteStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNoteStateImplCopyWith<$Res>
    implements $AddNoteStateCopyWith<$Res> {
  factory _$$AddNoteStateImplCopyWith(
          _$AddNoteStateImpl value, $Res Function(_$AddNoteStateImpl) then) =
      __$$AddNoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddNoteStatus status, String content, String? errorMessage});
}

/// @nodoc
class __$$AddNoteStateImplCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res, _$AddNoteStateImpl>
    implements _$$AddNoteStateImplCopyWith<$Res> {
  __$$AddNoteStateImplCopyWithImpl(
      _$AddNoteStateImpl _value, $Res Function(_$AddNoteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddNoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? content = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddNoteStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddNoteStatus,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddNoteStateImpl implements _AddNoteState {
  const _$AddNoteStateImpl(
      {this.status = AddNoteStatus.initial,
      this.content = '',
      this.errorMessage});

  @override
  @JsonKey()
  final AddNoteStatus status;
  @override
  @JsonKey()
  final String content;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AddNoteState(status: $status, content: $content, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, content, errorMessage);

  /// Create a copy of AddNoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteStateImplCopyWith<_$AddNoteStateImpl> get copyWith =>
      __$$AddNoteStateImplCopyWithImpl<_$AddNoteStateImpl>(this, _$identity);
}

abstract class _AddNoteState implements AddNoteState {
  const factory _AddNoteState(
      {final AddNoteStatus status,
      final String content,
      final String? errorMessage}) = _$AddNoteStateImpl;

  @override
  AddNoteStatus get status;
  @override
  String get content;
  @override
  String? get errorMessage;

  /// Create a copy of AddNoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNoteStateImplCopyWith<_$AddNoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
