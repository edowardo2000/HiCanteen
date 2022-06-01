import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HiCanteenFirebaseUser {
  HiCanteenFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HiCanteenFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HiCanteenFirebaseUser> hiCanteenFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<HiCanteenFirebaseUser>(
        (user) => currentUser = HiCanteenFirebaseUser(user));
