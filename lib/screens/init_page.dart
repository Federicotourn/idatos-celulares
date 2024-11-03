
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class InitPage extends StatefulWidget {
//   const InitPage({Key? key}) : super(key: key);

//   @override
//   State<InitPage> createState() => _InitPageState();
// }

// class _InitPageState extends State<InitPage> {
//   // final userController = Get.put(UserController());
//   // final loginController = Get.put(LoginController());

//   @override
//   void initState() {
//     super.initState();
//     try {
//       WidgetsBinding.instance.addPostFrameCallback((_) => validateUserLogged());
//     } catch (e) {
//       print(e);
//     }
//   }

//   validateUserLogged() async {
//     final boxLogin = GetStorage('Login');
//     bool firstTime = boxLogin.read('firstTime') ?? true;
//     final boxUser = GetStorage('User');
//     bool rememberMe = boxUser.read('rememberMe') ?? false;

//     if (firstTime) {
//       await Future.delayed(const Duration(seconds: 2));
//       Get.offAllNamed('/on_boarding_screen');
//     } else {
//       if (rememberMe) {
//         //await Future.delayed(const Duration(seconds: 1));
//         // await userController.loadUser();
//         // await loginController.setUpApp();
//         Get.offAllNamed('/index_screen');
//       } else {
//         final boxLogin = GetStorage('Login');
//         String? lastMethod = boxLogin.read('lastMethod');
//         if (lastMethod != null) {
//           await Future.delayed(const Duration(seconds: 2));
//           Get.offAllNamed('/login_last_method_screen');
//           // Get.offAllNamed('/index_screen');

//         } else {
//           await Future.delayed(const Duration(seconds: 2));
//           Get.offAllNamed('/login_screen');
//           // Get.offAllNamed('/index_screen');

//         }
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(color: const Color(0xffFAFAFF), child: Container());
//   }
// }
