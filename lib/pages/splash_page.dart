// import 'package:flutter/material.dart';

// //Packages
// import 'package:firebase_core/firebase_core.dart';
// import 'package:get_it/get_it.dart';

// //Services
// import '../services/navigation_service.dart';
// import '../services/media_service.dart';
// import '../services/cloud_storage_service.dart';
// import '../services/database_service.dart';

// class SplashPage extends StatefulWidget {
//   final VoidCallback onInitializationComplete;

//   const SplashPage({
//     required Key key,
//     required this.onInitializationComplete,
//   }) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     return _SplashPageState();
//   }
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 1)).then(
//       (_) {
//         _setup().then(
//           (_) => widget.onInitializationComplete(),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Chatify',
//       theme: ThemeData(
//         backgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
//         scaffoldBackgroundColor: const Color.fromRGBO(36, 35, 49, 1.0),
//       ),
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             height: 200,
//             width: 200,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.contain,
//                 image: AssetImage('assets/images/logo.png'),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> _setup() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     await Firebase.initializeApp(
//       // options: const FirebaseOptions(
//       //   apiKey: "AIzaSyCenxawmT1WU-98f2pPzoKULlOX-cvUyY8",
//       //   authDomain: "chatify-48fc3.firebaseapp.com",
//       //   projectId: "chatify-48fc3",
//       //   storageBucket: "chatify-48fc3.appspot.com",
//       //   messagingSenderId: "109502115335",
//       //   appId: "1:109502115335:web:5f0cb8227360355fb744a2",
//       //   measurementId: "G-WNLE6PML4Q",
//       // ),
//     );
//     _registerServices();
//   }

//   void _registerServices() {
//     GetIt.instance.registerSingleton<NavigationService>(
//       NavigationService(),
//     );
//     GetIt.instance.registerSingleton<MediaService>(
//       MediaService(),
//     );
//     GetIt.instance.registerSingleton<CloudStorageService>(
//       CloudStorageService(),
//     );
//     GetIt.instance.registerSingleton<DatabaseService>(
//       DatabaseService(),
//     );
//   }
// }
