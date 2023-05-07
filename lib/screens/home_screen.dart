import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unity_test/business_logic/global_cubit/global_cubit.dart';
import 'package:unity_test/business_logic/global_cubit/global_state.dart';

import 'loading_screen.dart';


class HomeScreen extends StatelessWidget {

  HomeScreen();

  @override
  Widget build(BuildContext context) {

    return


      BlocConsumer<GlobalCubit,GlobalState>(
        builder: (BuildContext context, state) {
          return Scaffold(
            body: SafeArea(
              child:
                // GlobalCubit.get(context).loaded ?
              GlobalCubit.get(context).web()
                  // :
              // const Center(child: CircularProgressIndicator()),

            ),
          );},
    listener: (BuildContext context, Object? state) {
          if (state is Loading){
            Navigator.push(
                context, MaterialPageRoute(builder: (BuildContext context) => const LoadingScreen()));
          }
    }
    );

  }
}





// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class HomeScreen extends StatefulWidget {
//   final String gameUrl;
//
//
//   HomeScreen({required this.gameUrl});
//
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//       body: SafeArea(
//         child: WebView(
//           initialUrl: widget.gameUrl,
//           javascriptMode: JavascriptMode.unrestricted,
//           gestureNavigationEnabled: true,
//           allowsInlineMediaPlayback: true,
//           onWebViewCreated: (WebViewController webViewController){
//             controller = webViewController;
//           },
//           onPageStarted: (String s){
//
//           },
//
//         ),
//       ),
//     );
//   }
// }