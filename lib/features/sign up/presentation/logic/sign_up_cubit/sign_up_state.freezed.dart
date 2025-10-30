// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>()';
}


}

/// @nodoc
class $SignupStateCopyWith<T,$Res>  {
$SignupStateCopyWith(SignupState<T> _, $Res Function(SignupState<T>) __);
}


/// Adds pattern-matching-related methods to [SignupState].
extension SignupStatePatterns<T> on SignupState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( SignupLoading<T> value)?  signupLoading,TResult Function( SignupSuccess<T> value)?  signupSuccess,TResult Function( SignupError<T> value)?  signupError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that);case SignupError() when signupError != null:
return signupError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( SignupLoading<T> value)  signupLoading,required TResult Function( SignupSuccess<T> value)  signupSuccess,required TResult Function( SignupError<T> value)  signupError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SignupLoading():
return signupLoading(_that);case SignupSuccess():
return signupSuccess(_that);case SignupError():
return signupError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( SignupLoading<T> value)?  signupLoading,TResult? Function( SignupSuccess<T> value)?  signupSuccess,TResult? Function( SignupError<T> value)?  signupError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SignupLoading() when signupLoading != null:
return signupLoading(_that);case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that);case SignupError() when signupError != null:
return signupError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signupLoading,TResult Function( T data)?  signupSuccess,TResult Function( String error)?  signupError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that.data);case SignupError() when signupError != null:
return signupError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signupLoading,required TResult Function( T data)  signupSuccess,required TResult Function( String error)  signupError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SignupLoading():
return signupLoading();case SignupSuccess():
return signupSuccess(_that.data);case SignupError():
return signupError(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signupLoading,TResult? Function( T data)?  signupSuccess,TResult? Function( String error)?  signupError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SignupLoading() when signupLoading != null:
return signupLoading();case SignupSuccess() when signupSuccess != null:
return signupSuccess(_that.data);case SignupError() when signupError != null:
return signupError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignupState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>.initial()';
}


}




/// @nodoc


class SignupLoading<T> implements SignupState<T> {
  const SignupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignupState<$T>.signupLoading()';
}


}




/// @nodoc


class SignupSuccess<T> implements SignupState<T> {
  const SignupSuccess(this.data);
  

 final  T data;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSuccessCopyWith<T, SignupSuccess<T>> get copyWith => _$SignupSuccessCopyWithImpl<T, SignupSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignupState<$T>.signupSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $SignupSuccessCopyWith<T,$Res> implements $SignupStateCopyWith<T, $Res> {
  factory $SignupSuccessCopyWith(SignupSuccess<T> value, $Res Function(SignupSuccess<T>) _then) = _$SignupSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SignupSuccessCopyWithImpl<T,$Res>
    implements $SignupSuccessCopyWith<T, $Res> {
  _$SignupSuccessCopyWithImpl(this._self, this._then);

  final SignupSuccess<T> _self;
  final $Res Function(SignupSuccess<T>) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SignupSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SignupError<T> implements SignupState<T> {
  const SignupError({required this.error});
  

 final  String error;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupErrorCopyWith<T, SignupError<T>> get copyWith => _$SignupErrorCopyWithImpl<T, SignupError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SignupState<$T>.signupError(error: $error)';
}


}

/// @nodoc
abstract mixin class $SignupErrorCopyWith<T,$Res> implements $SignupStateCopyWith<T, $Res> {
  factory $SignupErrorCopyWith(SignupError<T> value, $Res Function(SignupError<T>) _then) = _$SignupErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$SignupErrorCopyWithImpl<T,$Res>
    implements $SignupErrorCopyWith<T, $Res> {
  _$SignupErrorCopyWithImpl(this._self, this._then);

  final SignupError<T> _self;
  final $Res Function(SignupError<T>) _then;

/// Create a copy of SignupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SignupError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
