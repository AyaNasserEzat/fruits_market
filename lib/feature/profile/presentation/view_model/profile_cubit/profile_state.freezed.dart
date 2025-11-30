// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( GetProfileLoading value)?  getProfileLoading,TResult Function( GetProfileSuccess value)?  getProfileSuccess,TResult Function( GetProfileError value)?  getProfileError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading(_that);case GetProfileSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that);case GetProfileError() when getProfileError != null:
return getProfileError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( GetProfileLoading value)  getProfileLoading,required TResult Function( GetProfileSuccess value)  getProfileSuccess,required TResult Function( GetProfileError value)  getProfileError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case GetProfileLoading():
return getProfileLoading(_that);case GetProfileSuccess():
return getProfileSuccess(_that);case GetProfileError():
return getProfileError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( GetProfileLoading value)?  getProfileLoading,TResult? Function( GetProfileSuccess value)?  getProfileSuccess,TResult? Function( GetProfileError value)?  getProfileError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading(_that);case GetProfileSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that);case GetProfileError() when getProfileError != null:
return getProfileError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getProfileLoading,TResult Function( ProfileModel data)?  getProfileSuccess,TResult Function( ApiErrorModel apiErroeModel)?  getProfileError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading();case GetProfileSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that.data);case GetProfileError() when getProfileError != null:
return getProfileError(_that.apiErroeModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getProfileLoading,required TResult Function( ProfileModel data)  getProfileSuccess,required TResult Function( ApiErrorModel apiErroeModel)  getProfileError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case GetProfileLoading():
return getProfileLoading();case GetProfileSuccess():
return getProfileSuccess(_that.data);case GetProfileError():
return getProfileError(_that.apiErroeModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getProfileLoading,TResult? Function( ProfileModel data)?  getProfileSuccess,TResult? Function( ApiErrorModel apiErroeModel)?  getProfileError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case GetProfileLoading() when getProfileLoading != null:
return getProfileLoading();case GetProfileSuccess() when getProfileSuccess != null:
return getProfileSuccess(_that.data);case GetProfileError() when getProfileError != null:
return getProfileError(_that.apiErroeModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProfileState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class GetProfileLoading implements ProfileState {
  const GetProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.getProfileLoading()';
}


}




/// @nodoc


class GetProfileSuccess implements ProfileState {
  const GetProfileSuccess(this.data);
  

 final  ProfileModel data;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileSuccessCopyWith<GetProfileSuccess> get copyWith => _$GetProfileSuccessCopyWithImpl<GetProfileSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileState.getProfileSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $GetProfileSuccessCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $GetProfileSuccessCopyWith(GetProfileSuccess value, $Res Function(GetProfileSuccess) _then) = _$GetProfileSuccessCopyWithImpl;
@useResult
$Res call({
 ProfileModel data
});




}
/// @nodoc
class _$GetProfileSuccessCopyWithImpl<$Res>
    implements $GetProfileSuccessCopyWith<$Res> {
  _$GetProfileSuccessCopyWithImpl(this._self, this._then);

  final GetProfileSuccess _self;
  final $Res Function(GetProfileSuccess) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(GetProfileSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileModel,
  ));
}


}

/// @nodoc


class GetProfileError implements ProfileState {
  const GetProfileError(this.apiErroeModel);
  

 final  ApiErrorModel apiErroeModel;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileErrorCopyWith<GetProfileError> get copyWith => _$GetProfileErrorCopyWithImpl<GetProfileError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileError&&(identical(other.apiErroeModel, apiErroeModel) || other.apiErroeModel == apiErroeModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErroeModel);

@override
String toString() {
  return 'ProfileState.getProfileError(apiErroeModel: $apiErroeModel)';
}


}

/// @nodoc
abstract mixin class $GetProfileErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $GetProfileErrorCopyWith(GetProfileError value, $Res Function(GetProfileError) _then) = _$GetProfileErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErroeModel
});




}
/// @nodoc
class _$GetProfileErrorCopyWithImpl<$Res>
    implements $GetProfileErrorCopyWith<$Res> {
  _$GetProfileErrorCopyWithImpl(this._self, this._then);

  final GetProfileError _self;
  final $Res Function(GetProfileError) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErroeModel = null,}) {
  return _then(GetProfileError(
null == apiErroeModel ? _self.apiErroeModel : apiErroeModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
