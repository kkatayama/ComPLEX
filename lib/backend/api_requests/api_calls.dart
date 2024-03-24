import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FastAPI Group Code

class FastAPIGroup {
  static String baseUrl = 'https://api.mangoboat.tv';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static CreateUserCall createUserCall = CreateUserCall();
  static LoginCall loginCall = LoginCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static AuthMeCall authMeCall = AuthMeCall();
  static AuthMePlaylistsCall authMePlaylistsCall = AuthMePlaylistsCall();
  static TestAccessTokenCall testAccessTokenCall = TestAccessTokenCall();
  static TestRefreshTokenCall testRefreshTokenCall = TestRefreshTokenCall();
  static LogoutCall logoutCall = LogoutCall();
  static ReadUsersCall readUsersCall = ReadUsersCall();
  static ReadUserCall readUserCall = ReadUserCall();
  static EditUserCall editUserCall = EditUserCall();
  static DeleteUserCall deleteUserCall = DeleteUserCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static CreatePlaylistCall createPlaylistCall = CreatePlaylistCall();
  static ReadPlaylistsCall readPlaylistsCall = ReadPlaylistsCall();
  static ReadPlaylistCall readPlaylistCall = ReadPlaylistCall();
  static ReadPlaylistTracksCall readPlaylistTracksCall =
      ReadPlaylistTracksCall();
}

class CreateUserCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password1 = '',
    String? password2 = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "password1": "$password1",
  "password2": "$password2"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_user',
      apiUrl: '${FastAPIGroup.baseUrl}/sign-up',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${FastAPIGroup.baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'username': username,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  int? accessExpires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.access_expires''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  int? refreshExpires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.refresh_expires''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'refresh_token',
      apiUrl: '${FastAPIGroup.baseUrl}/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthMeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'auth_me',
      apiUrl: '${FastAPIGroup.baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class AuthMePlaylistsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'auth_me_playlists',
      apiUrl: '${FastAPIGroup.baseUrl}/auth/me/playlists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestAccessTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'test_access_token',
      apiUrl: '${FastAPIGroup.baseUrl}/test-access-token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestRefreshTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'test_refresh_token',
      apiUrl: '${FastAPIGroup.baseUrl}/test-refresh-token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${FastAPIGroup.baseUrl}/logout',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadUsersCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'read_users',
      apiUrl: '${FastAPIGroup.baseUrl}/users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadUserCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'read_user',
      apiUrl: '${FastAPIGroup.baseUrl}/users/$userId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditUserCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "name": "",
  "email": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'edit_user',
      apiUrl: '${FastAPIGroup.baseUrl}/users/$userId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete_user',
      apiUrl: '${FastAPIGroup.baseUrl}/users/$userId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "old_password": "",
  "new_password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'change_password',
      apiUrl: '${FastAPIGroup.baseUrl}/change-password',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePlaylistCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "title": "",
  "description": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_playlist',
      apiUrl: '${FastAPIGroup.baseUrl}/playlists',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadPlaylistsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'read_playlists',
      apiUrl: '${FastAPIGroup.baseUrl}/playlists/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadPlaylistCall {
  Future<ApiCallResponse> call({
    int? playlistId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'read_playlist',
      apiUrl: '${FastAPIGroup.baseUrl}/playlists/$playlistId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadPlaylistTracksCall {
  Future<ApiCallResponse> call({
    int? playlistId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'read_playlist_tracks',
      apiUrl: '${FastAPIGroup.baseUrl}/playlists/$playlistId/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End FastAPI Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
