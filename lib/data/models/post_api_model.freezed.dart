// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostApiModel {

 String get id;
/// Create a copy of PostApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostApiModelCopyWith<PostApiModel> get copyWith => _$PostApiModelCopyWithImpl<PostApiModel>(this as PostApiModel, _$identity);

  /// Serializes this PostApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostApiModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostApiModel(id: $id)';
}


}

/// @nodoc
abstract mixin class $PostApiModelCopyWith<$Res>  {
  factory $PostApiModelCopyWith(PostApiModel value, $Res Function(PostApiModel) _then) = _$PostApiModelCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$PostApiModelCopyWithImpl<$Res>
    implements $PostApiModelCopyWith<$Res> {
  _$PostApiModelCopyWithImpl(this._self, this._then);

  final PostApiModel _self;
  final $Res Function(PostApiModel) _then;

/// Create a copy of PostApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PostApiModel implements PostApiModel {
  const _PostApiModel({required this.id});
  factory _PostApiModel.fromJson(Map<String, dynamic> json) => _$PostApiModelFromJson(json);

@override final  String id;

/// Create a copy of PostApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostApiModelCopyWith<_PostApiModel> get copyWith => __$PostApiModelCopyWithImpl<_PostApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostApiModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostApiModel(id: $id)';
}


}

/// @nodoc
abstract mixin class _$PostApiModelCopyWith<$Res> implements $PostApiModelCopyWith<$Res> {
  factory _$PostApiModelCopyWith(_PostApiModel value, $Res Function(_PostApiModel) _then) = __$PostApiModelCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$PostApiModelCopyWithImpl<$Res>
    implements _$PostApiModelCopyWith<$Res> {
  __$PostApiModelCopyWithImpl(this._self, this._then);

  final _PostApiModel _self;
  final $Res Function(_PostApiModel) _then;

/// Create a copy of PostApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_PostApiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
