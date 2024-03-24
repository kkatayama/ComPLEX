// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? id,
    String? email,
    String? name,
    String? password,
  })  : _id = id,
        _email = email,
        _name = name,
        _password = password;

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "EMAIL" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "NAME" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "PASSWORD" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        id: castToType<int>(data['ID']),
        email: data['EMAIL'] as String?,
        name: data['NAME'] as String?,
        password: data['PASSWORD'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'EMAIL': _email,
        'NAME': _name,
        'PASSWORD': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.int,
        ),
        'EMAIL': serializeParam(
          _email,
          ParamType.String,
        ),
        'NAME': serializeParam(
          _name,
          ParamType.String,
        ),
        'PASSWORD': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['EMAIL'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['NAME'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['PASSWORD'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        password == other.password;
  }

  @override
  int get hashCode => const ListEquality().hash([id, email, name, password]);
}

UsersStruct createUsersStruct({
  int? id,
  String? email,
  String? name,
  String? password,
}) =>
    UsersStruct(
      id: id,
      email: email,
      name: name,
      password: password,
    );
