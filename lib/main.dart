import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvvm_flutter/theme/colors.dart';
import 'package:mvvm_flutter/theme/theme_data.dart';
import 'package:provider/provider.dart';

import 'core/locator.dart';
import 'core/providers.dart';
import 'core/routing/route_name.dart';
import 'core/routing/router.dart';
import 'core/services/navigator_service.dart';
import 'utils/class_bilder.dart';
import 'views/home/home_view.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//    statusBarColor: Colors.transparent,
//  ));
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) async {
    await LocatorInjector.setupLocator();
   
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjector.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme(context).primaryTheme,
        home: HomeView(),
      ),
    );
  }
}
