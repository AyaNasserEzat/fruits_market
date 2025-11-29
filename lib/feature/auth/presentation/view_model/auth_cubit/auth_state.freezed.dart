// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState<$T>()';
}


}

/// @nodoc
class $AuthStateCopyWith<T,$Res>  {
$AuthStateCopyWith(AuthState<T> _, $Res Function(AuthState<T>) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns<T> on AuthState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SignupLoading<T> value)?  signupLoading,TResult Function( SignupSucess<T> value)?  signupSucess,TResult Function( SignupError<T> value)?  signupError,TResult Function( LoginLoading<T> value)?  loginLoading,TResult Function( LoginSuccess<T> value)?  loginSuccess,TResult Function( LoginError<T> value)?  loginError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSucess() when signupSucess != null:
return signupSucess(_that);case SignupError() when signupError != null:
return signupError(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case LoginError() when loginError != null:
return loginError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SignupLoading<T> value)  signupLoading,required TResult Function( SignupSucess<T> value)  signupSucess,required TResult Function( SignupError<T> value)  signupError,required TResult Function( LoginLoading<T> value)  loginLoading,required TResult Function( LoginSuccess<T> value)  loginSuccess,required TResult Function( LoginError<T> value)  loginError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignupLoading():
return signupLoading(_that);case SignupSucess():
return signupSucess(_that);case SignupError():
return signupError(_that);case LoginLoading():
return loginLoading(_that);case LoginSuccess():
return loginSuccess(_that);case LoginError():
return loginError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SignupLoading<T> value)?  signupLoading,TResult? Function( SignupSucess<T> value)?  signupSucess,TResult? Function( SignupError<T> value)?  signupError,TResult? Function( LoginLoading<T> value)?  loginLoading,TResult? Function( LoginSuccess<T> value)?  loginSuccess,TResult? Function( LoginError<T> value)?  loginError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSucess() when signupSucess != null:
return signupSucess(_that);case SignupError() when signupError != null:
return signupError(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case LoginError() when loginError != null:
return loginError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signupLoading,TResult Function( T data)?  signupSucess,TResult Function( ApiErrorModel apiErroeModel)?  signupError,TResult Function()?  loginLoading,TResult Function( T data)?  loginSuccess,TResult Function( ApiErrorModel apiErrorModel)?  loginError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSucess() when signupSucess != null:
return signupSucess(_that.data);case SignupError() when signupError != null:
return signupError(_that.apiErroeModel);case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.data);case LoginError() when loginError != null:
return loginError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signupLoading,required TResult Function( T data)  signupSucess,required TResult Function( ApiErrorModel apiErroeModel)  signupError,required TResult Function()  loginLoading,required TResult Function( T data)  loginSuccess,required TResult Function( ApiErrorModel apiErrorModel)  loginError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignupLoading():
return signupLoading();case SignupSucess():
return signupSucess(_that.data);case SignupError():
return signupError(_that.apiErroeModel);case LoginLoading():
return loginLoading();case LoginSuccess():
return loginSuccess(_that.data);case LoginError():
return loginError(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signupLoading,TResult? Function( T data)?  signupSucess,TResult? Function( ApiErrorModel apiErroeModel)?  signupError,TResult? Function()?  loginLoading,TResult? Function( T data)?  loginSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  loginError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSucess() when signupSucess != null:
return signupSucess(_that.data);case SignupError() when signupError != null:
return signupError(_that.apiErroeModel);case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.data);case LoginError() when loginError != null:
return loginError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements AuthState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState<$T>.initial()';
}


}




/// @nodoc


class SignupLoading<T> implements AuthState<T> {
  const SignupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState<$T>.signupLoading()';
}


}




/// @nodoc


class SignupSucess<T> implements AuthState<T> {
  const SignupSucess(this.data);
  

 final  T data;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSucessCopyWith<T, SignupSucess<T>> get copyWith => _$SignupSucessCopyWithImpl<T, SignupSucess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSucess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AuthState<$T>.signupSucess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupSucessCopyWith<T,$Res> implements $AuthStateCopyWith<T, $Res> {
  factory $SignupSucessCopyWith(SignupSucess<T> value, $Res Function(SignupSucess<T>) _then) = _$SignupSucessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignupSucessCopyWithImpl<T,$Res>
    implements $SignupSucessCopyWith<T, $Res> {
  _$SignupSucessCopyWithImpl(this._self, this._then);

  final SignupSucess<T> _self;
  final $Res Function(SignupSucess<T>) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignupSucess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignupError<T> implements AuthState<T> {
  const SignupError(this.apiErroeModel);
  

 final  ApiErrorModel apiErroeModel;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupErrorCopyWith<T, SignupError<T>> get copyWith => _$SignupErrorCopyWithImpl<T, SignupError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupError<T>&&(identical(other.apiErroeModel, apiErroeModel) || other.apiErroeModel == apiErroeModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErroeModel);

@override
String toString() {
  return 'AuthState<$T>.signupError(apiErroeModel: $apiErroeModel)';
}


}

/// @nodoc
abstract mixin class $SignupErrorCopyWith<T,$Res> implements $AuthStateCopyWith<T, $Res> {
  factory $SignupErrorCopyWith(SignupError<T> value, $Res Function(SignupError<T>) _then) = _$SignupErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErroeModel
});




}
/// @nodoc
class _$SignupErrorCopyWithImpl<T,$Res>
    implements $SignupErrorCopyWith<T, $Res> {
  _$SignupErrorCopyWithImpl(this._self, this._then);

  final SignupError<T> _self;
  final $Res Function(SignupError<T>) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErroeModel = null,}) {
  return _then(SignupError<T>(
null == apiErroeModel ? _self.apiErroeModel : apiErroeModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

/// @nodoc


class LoginLoading<T> implements AuthState<T> {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState<$T>.loginLoading()';
}


}




/// @nodoc


class LoginSuccess<T> implements AuthState<T> {
  const LoginSuccess(this.data);
  

 final  T data;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<T, LoginSuccess<T>> get copyWith => _$LoginSuccessCopyWithImpl<T, LoginSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AuthState<$T>.loginSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<T,$Res> implements $AuthStateCopyWith<T, $Res> {
  factory $LoginSuccessCopyWith(LoginSuccess<T> value, $Res Function(LoginSuccess<T>) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<T,$Res>
    implements $LoginSuccessCopyWith<T, $Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess<T> _self;
  final $Res Function(LoginSuccess<T>) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(LoginSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class LoginError<T> implements AuthState<T> {
  const LoginError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginErrorCopyWith<T, LoginError<T>> get copyWith => _$LoginErrorCopyWithImpl<T, LoginError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginError<T>&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'AuthState<$T>.loginError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class $LoginErrorCopyWith<T,$Res> implements $AuthStateCopyWith<T, $Res> {
  factory $LoginErrorCopyWith(LoginError<T> value, $Res Function(LoginError<T>) _then) = _$LoginErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class _$LoginErrorCopyWithImpl<T,$Res>
    implements $LoginErrorCopyWith<T, $Res> {
  _$LoginErrorCopyWithImpl(this._self, this._then);

  final LoginError<T> _self;
  final $Res Function(LoginError<T>) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(LoginError<T>(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
