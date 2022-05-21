import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KokomberFirebaseUser {
  KokomberFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KokomberFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KokomberFirebaseUser> kokomberFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KokomberFirebaseUser>(
            (user) => currentUser = KokomberFirebaseUser(user));
