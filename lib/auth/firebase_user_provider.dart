import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ProductDeliveryAppFirebaseUser {
  ProductDeliveryAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ProductDeliveryAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ProductDeliveryAppFirebaseUser> productDeliveryAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ProductDeliveryAppFirebaseUser>(
      (user) {
        currentUser = ProductDeliveryAppFirebaseUser(user);
        return currentUser!;
      },
    );
