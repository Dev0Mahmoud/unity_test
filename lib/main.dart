import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unity_test/business_logic/global_cubit/global_state.dart';
import 'package:unity_test/screens/home_screen.dart';
import 'package:unity_test/screens/splash_screen.dart';
import 'business_logic/bloc_observer.dart';
import 'business_logic/global_cubit/global_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GlobalCubit(),
      child: BlocConsumer<GlobalCubit, GlobalState>(
    listener: (context,state){},
    builder: (context,state) {
      return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    },
      )
    );
  }
}
