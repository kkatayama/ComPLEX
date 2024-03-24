// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthDataStruct extends BaseStruct {
  AuthDataStruct({
    String? accessToken,
    DateTime? accessExpires,
    String? refreshToken,
    int? refreshExpires,
    int? userId,
    String? email,
    String? name,
  })  : _accessToken = accessToken,
        _accessExpires = accessExpires,
        _refreshToken = refreshToken,
        _refreshExpires = refreshExpires,
        _userId = userId,
        _email = email,
        _name = name;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;
  bool hasAccessToken() => _accessToken != null;

  // "access_expires" field.
  DateTime? _accessExpires;
  DateTime? get accessExpires => _accessExpires;
  set accessExpires(DateTime? val) => _accessExpires = val;
  bool hasAccessExpires() => _accessExpires != null;

  // "refresh_token" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  // "refresh_expires" field.
  int? _refreshExpires;
  int get refreshExpires => _refreshExpires ?? 0;
  set refreshExpires(int? val) => _refreshExpires = val;
  void incrementRefreshExpires(int amount) =>
      _refreshExpires = refreshExpires + amount;
  bool hasRefreshExpires() => _refreshExpires != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static AuthDataStruct fromMap(Map<String, dynamic> data) => AuthDataStruct(
        accessToken: data['access_token'] as String?,
        accessExpires: data['access_expires'] as DateTime?,
        refreshToken: data['refresh_token'] as String?,
        refreshExpires: castToType<int>(data['refresh_expires']),
        userId: castToType<int>(data['user_id']),
        email: data['email'] as String?,
        name: data['name'] as String?,
      );

  static AuthDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? AuthDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'access_expires': _accessExpires,
        'refresh_token': _refreshToken,
        'refresh_expires': _refreshExpires,
        'user_id': _userId,
        'email': _email,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'access_expires': serializeParam(
          _accessExpires,
          ParamType.DateTime,
        ),
        'refresh_token': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'refresh_expires': serializeParam(
          _refreshExpires,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthDataStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        accessExpires: deserializeParam(
          data['access_expires'],
          ParamType.DateTime,
          false,
        ),
        refreshToken: deserializeParam(
          data['refresh_token'],
          ParamType.String,
          false,
        ),
        refreshExpires: deserializeParam(
          data['refresh_expires'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthDataStruct &&
        accessToken == other.accessToken &&
        accessExpires == other.accessExpires &&
        refreshToken == other.refreshToken &&
        refreshExpires == other.refreshExpires &&
        userId == other.userId &&
        email == other.email &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accessToken,
        accessExpires,
        refreshToken,
        refreshExpires,
        userId,
        email,
        name
      ]);
}

AuthDataStruct createAuthDataStruct({
  String? accessToken,
  DateTime? accessExpires,
  String? refreshToken,
  int? refreshExpires,
  int? userId,
  String? email,
  String? name,
}) =>
    AuthDataStruct(
      accessToken: accessToken,
      accessExpires: accessExpires,
      refreshToken: refreshToken,
      refreshExpires: refreshExpires,
      userId: userId,
      email: email,
      name: name,
    );
