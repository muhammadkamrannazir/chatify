import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//Packages
import 'package:provider/provider.dart';

//Services
import './services/navigation_service.dart';

//Providers
import './providers/authentication_provider.dart';

//Pages
import './pages/splash_page.dart';
import './pages/login_page.dart';
import './pages/register_page.dart';
import './pages/home_page.dart';

// void main() {
//   runApp(
//     SplashPage(
//       key: UniqueKey(),
//       onInitializationComplete: () {
//         runApp(
//           const MainApp(),
//         );
//       },
//     ),
//   );
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCenxawmT1WU-98f2pPzoKULlOX-cvUyY8",
      authDomain: "chatify-48fc3.firebaseapp.com",
      projectId: "chatify-48fc3",
      storageBucket: "chatify-48fc3.appspot.com",
      messagingSenderId: "109502115335",
      appId: "1:109502115335:web:5f0cb8227360355fb744a2",
      measurementId: "G-WNLE6PML4Q",
    ),
  );
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthenticationProvider>(
          create: (BuildContext context) {
            return AuthenticationProvider();
          },
        )
      ],
      child: MaterialApp( 
        title: 'Chatify',
        theme: ThemeData(
          backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
          scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
          ),
        ),
        home: HomePage(),
        // navigatorKey: NavigationService.navigatorKey,
        // initialRoute: '/login',
        // routes: {
        //   '/login': (BuildContext context) => LoginPage(),
        //   '/register': (BuildContext context) => RegisterPage(),
        //   '/home': (BuildContext context) => HomePage(),
        // },
      ),
    );
  }
}
