import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/global_cubit/global_cubit.dart';
import '../business_logic/global_cubit/global_state.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<GlobalCubit,GlobalState>(
        listener: (BuildContext context, Object? state){
          if (state is Loaded){
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, state)=> const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
