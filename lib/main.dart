import 'package:expenses_tracker/app.dart';
import 'package:expenses_tracker/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart'; // Import the generated Firebase options file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform, // Use generated options
    );
    Bloc.observer = SimpleBlocObserver();
    runApp(const MyApp());
  } catch (e, stackTrace) {
    debugPrint("Firebase Initialization Error: $e");
    debugPrint("$stackTrace");
  }
}
