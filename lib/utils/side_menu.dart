// import 'package:car_care/utils/app_theme.dart';
// import 'package:car_care/widgets/alert_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SideMenu extends StatelessWidget {
//   SideMenu({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppTheme.nearlyBlack,
//       child: Column(
//         // Important: Remove any padding from the ListView.
//         // padding: EdgeInsets.zero,
//         children: [
//           SizedBox(
//             height: Get.height * 0.3,
//             child: DrawerHeader(
//               // decoration: const BoxDecoration(
//               //     color: AppTheme.nearlyBlack,
//               //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30, bottom: 10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                         height: 75,
//                         width: 75,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: AppTheme.nearlyBlack),
//                             borderRadius: const BorderRadius.all(Radius.circular(80))),
//                         child: const ClipRRect(
//                           borderRadius: BorderRadius.all(Radius.circular(80)),
//                           child: Image(
//                             image: AssetImage('assets/profile_image.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         )),
//                     const SizedBox(height: 10),
//                     Text('Federico Tourn'.toUpperCase(), style: AppTheme.title)
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               height: Get.height * 0.7,
//               width: Get.width,
//               decoration: const BoxDecoration(
//                   color: AppTheme.nearlyWhite,
//                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Column(
//                   children: [
//                     const SizedBox(height: 30),
//                     GestureDetector(
//                       onTap: () {
//                         Get.toNamed('/profile_screen');
//                       },
//                       child: _itemSide(
//                         name: 'perfil'.tr,
//                         icon: Icons.person_outline,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     GestureDetector(
//                       onTap: () {
//                         //Get.toNamed('/home_screen');
//                       },
//                       child: _itemSide(
//                         name: 'configuracion'.tr,
//                         icon: Icons.settings_outlined,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     GestureDetector(
//                       onTap: () {
//                         Get.toNamed('/contact_screen');
//                       },
//                       child: _itemSide(
//                         name: 'contacto'.tr,
//                         icon: Icons.help_outline_outlined,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     GestureDetector(
//                       onTap: () {
//                         Get.toNamed('/welcome_sucive_screen');
//                       },
//                       child: _itemSide(
//                         name: 'sucive?',
//                         icon: Icons.help_outline_outlined,
//                       ),
//                     ),
//                     const Expanded(child: SizedBox()),
//                     GestureDetector(
//                       onTap: () {
//                         AlertMessagge.showErrorMessage(
//                             context, '¿Seguro desea cerrar sesión?', 'Cancelar', 'Cerrar Sesión');
//                       },
//                       child: _itemSide(
//                         name: 'cerrar_sesion'.tr,
//                         icon: Icons.logout,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class _itemSide extends StatelessWidget {
//   final String? name;
//   final IconData icon;
//   const _itemSide({
//     super.key,
//     this.name,
//     required this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Icon(icon, color: AppTheme.nearlyBlack),
//           const SizedBox(
//             width: 20,
//           ),
//           Text(
//             name!,
//             maxLines: 2,
//             style: AppTheme.containText.copyWith(color: AppTheme.nearlyBlack),
//           )
//         ],
//       ),
//     );
//   }
// }

// class _DrawerHeader extends StatelessWidget {
//   const _DrawerHeader({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DrawerHeader(
//       child: Container(
//         color: AppTheme.nearlyBlack,
//       ),
//     );
//   }
// }
