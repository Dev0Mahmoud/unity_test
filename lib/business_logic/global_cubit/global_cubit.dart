import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'global_state.dart';


class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  static GlobalCubit get(context) => BlocProvider.of(context);


  String url1 =  'https://anhjj.com/haies';
  String url =  'https://ahmedmebrahim.com/haies/';
  String url2 =  'https://youtube.com';
  bool loaded = false;
  late WebViewController controller;
  WebView web (){

  return WebView(
    initialUrl: url2,
    javascriptMode: JavascriptMode.unrestricted,
    gestureNavigationEnabled: true,
    allowsInlineMediaPlayback: true,
    onWebViewCreated: (WebViewController webViewController){
      controller = webViewController;
    },
    onPageStarted: (String s){
      loaded = false;
      emit(Loading());
    },
    onPageFinished:(String f){
      loaded = true;
      emit(Loaded());
    },


  );

}
}



