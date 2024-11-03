// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../notes_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesListEvent {}

/// @nodoc
abstract class $NotesListEventCopyWith<$Res> {
  factory $NotesListEventCopyWith(
          NotesListEvent value, $Res Function(NotesListEvent) then) =
      _$NotesListEventCopyWithImpl<$Res, NotesListEvent>;
}

/// @nodoc
class _$NotesListEventCopyWithImpl<$Res, $Val extends NotesListEvent>
    implements $NotesListEventCopyWith<$Res> {
  _$NotesListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotesListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotesListLoadRequestedImplCopyWith<$Res> {
  factory _$$NotesListLoadRequestedImplCopyWith(
          _$NotesListLoadRequestedImpl value,
          $Res Function(_$NotesListLoadRequestedImpl) then) =
      __$$NotesListLoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotesListLoadRequestedImplCopyWithImpl<$Res>
    extends _$NotesListEventCopyWithImpl<$Res, _$NotesListLoadRequestedImpl>
    implements _$$NotesListLoadRequestedImplCopyWith<$Res> {
  __$$NotesListLoadRequestedImplCopyWithImpl(
      _$NotesListLoadRequestedImpl _value,
      $Res Function(_$NotesListLoadRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotesListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotesListLoadRequestedImpl implements NotesListLoadRequested {
  const _$NotesListLoadRequestedImpl();

  @override
  String toString() {
    return 'NotesListEvent.loadRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesListLoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class NotesListLoadRequested implements NotesListEvent {
  const factory NotesListLoadRequested() = _$NotesListLoadRequestedImpl;
}

/// @nodoc
mixin _$NotesListState {
  NotesListStatus get status => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of NotesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotesListStateCopyWith<NotesListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesListStateCopyWith<$Res> {
  factory $NotesListStateCopyWith(
          NotesListState value, $Res Function(NotesListState) then) =
      _$NotesListStateCopyWithImpl<$Res, NotesListState>;
  @useResult
  $Res call({NotesListStatus status, List<Note> notes, String? errorMessage});
}

/// @nodoc
class _$NotesListStateCopyWithImpl<$Res, $Val extends NotesListState>
    implements $NotesListStateCopyWith<$Res> {
  _$NotesListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotesListStatus,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesListStateImplCopyWith<$Res>
    implements $NotesListStateCopyWith<$Res> {
  factory _$$NotesListStateImplCopyWith(_$NotesListStateImpl value,
          $Res Function(_$NotesListStateImpl) then) =
      __$$NotesListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotesListStatus status, List<Note> notes, String? errorMessage});
}

/// @nodoc
class __$$NotesListStateImplCopyWithImpl<$Res>
    extends _$NotesListStateCopyWithImpl<$Res, _$NotesListStateImpl>
    implements _$$NotesListStateImplCopyWith<$Res> {
  __$$NotesListStateImplCopyWithImpl(
      _$NotesListStateImpl _value, $Res Function(_$NotesListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$NotesListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotesListStatus,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotesListStateImpl implements _NotesListState {
  const _$NotesListStateImpl(
      {this.status = NotesListStatus.initial,
      final List<Note> notes = const [],
      this.errorMessage})
      : _notes = notes;

  @override
  @JsonKey()
  final NotesListStatus status;
  final List<Note> _notes;
  @override
  @JsonKey()
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NotesListState(status: $status, notes: $notes, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_notes), errorMessage);

  /// Create a copy of NotesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesListStateImplCopyWith<_$NotesListStateImpl> get copyWith =>
      __$$NotesListStateImplCopyWithImpl<_$NotesListStateImpl>(
          this, _$identity);
}

abstract class _NotesListState implements NotesListState {
  const factory _NotesListState(
      {final NotesListStatus status,
      final List<Note> notes,
      final String? errorMessage}) = _$NotesListStateImpl;

  @override
  NotesListStatus get status;
  @override
  List<Note> get notes;
  @override
  String? get errorMessage;

  /// Create a copy of NotesListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesListStateImplCopyWith<_$NotesListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
