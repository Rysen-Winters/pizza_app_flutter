// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:user_repository/user_repository.dart'; // Import for UserRepository
import 'package:pizza_app/app.dart';

// Define una implementación dummy de UserRepository para propósitos de prueba.
// Esto evita que el test dependa de una inicialización real de Firebase.
class DummyUserRepository implements UserRepository {
  @override
  Stream<MyUser?> get user => Stream.value(MyUser.empty); // Retorna un stream con un usuario vacío

  @override
  Future<void> logOut() async {}

  @override
  Future<void> signIn(String email, String password) async {}

  @override
  Future<MyUser> signUp(MyUser myUser, String password) async => myUser;

  @override
  Future<void> setUserData(MyUser user) async {}
}

void main() {
  testWidgets('App starts without crashing', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // MyApp ahora requiere un UserRepository. Para el test, pasamos una implementación dummy.
    await tester.pumpWidget(MyApp(DummyUserRepository()));
    // Aquí podrías añadir aserciones para verificar que tu Pizza App se renderiza correctamente.
    // Por ejemplo: expect(find.text('Pizza Delivery'), findsOneWidget);
  });
}
