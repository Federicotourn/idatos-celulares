import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/controllers/index_controller.dart';
import 'package:idatos_celulares/utils/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? arrowBack;
  CustomAppBar({Key? key, required this.title, required this.arrowBack}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(MediaQuery.of(Get.context!).padding.top + 30);

  final indexController = Get.put(IndexController());

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppTheme.nearlyBlack,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (arrowBack != null && arrowBack!)
                ? InkWell(
                    onTap: () => Get.back(), child: Container(height: 40, width: 40, child: Icon(Icons.arrow_back_ios, color: AppTheme.nearlyWhite)))
                : Container(
                    height: 40,
                    width: 40,
                  ),
            Center(
              child: Text(
                title.toUpperCase(),
                style: AppTheme.containText.copyWith(color: AppTheme.nearlyWhite, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 40,
              width: 40,
            )
          ],
        ));
  }
}
