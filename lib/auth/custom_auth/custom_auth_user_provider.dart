import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MusicAuthUser {
  MusicAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  AuthDataStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MusicAuthUser> musicAuthUserSubject =
    BehaviorSubject.seeded(MusicAuthUser(loggedIn: false));
Stream<MusicAuthUser> musicAuthUserStream() =>
    musicAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
