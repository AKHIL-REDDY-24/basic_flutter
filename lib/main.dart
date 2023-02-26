import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:this_time/firebase_options.dart';
import 'package:this_time/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:this_time/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:this_time/src/repository/authentication_repository/authentication_repository.dart';
import 'package:this_time/src/utils/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(title: const Text(".appable/"),leading: const Icon(Icons.ondemand_video )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        child: const Icon(Icons.add_shopping_cart_outlined);
      },
      ),
      body: const Center(child: Text('Home Page'),),
    );
  }
}
