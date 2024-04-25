import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'simple_bloc_observer.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyBauJMOIDfB71ylPqYf1kh8TtafsC1Rpmc",
        authDomain: "expense-tracker-50c2c.firebaseapp.com",
        projectId: "expense-tracker-50c2c",
        storageBucket: "expense-tracker-50c2c.appspot.com",
        messagingSenderId: "641154702843",
        appId: "1:641154702843:web:dcbe76cb5fc897d833ff5e",
        measurementId: "G-PZ0KZ84MCN"));
  }else{
    await Firebase.initializeApp();
  }
  
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}
