import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BitcoinWalletFirebaseUser {
  BitcoinWalletFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

BitcoinWalletFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BitcoinWalletFirebaseUser> bitcoinWalletFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BitcoinWalletFirebaseUser>(
            (user) => currentUser = BitcoinWalletFirebaseUser(user));
