import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/routes/routes.dart';
import 'package:idatos_celulares/services/index_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IDatos',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome_screen',
      getPages: RoutesApp.routes,
    );
  }
}

Future<void> initialConfig() async {
  // await GetStorage.init('Login');
  // await GetStorage.init('User');
  await Get.putAsync(() => IndexService().init());
}
