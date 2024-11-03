import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/utils/app_theme.dart';

void showCustomSnackBar(String text, Color? color) {
  if (color == AppTheme.success) {
    GetSnackBar(
      // message:
      messageText: Text(
        text,
        style: AppTheme.inputText.copyWith(color: AppTheme.nearlyWhite),
      ),
      boxShadows: [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0, 2),
          blurRadius: 4.0,
          spreadRadius: 0,
        ),
      ],
      duration: Duration(seconds: 3),
      animationDuration: Duration(milliseconds: 500),
      backgroundColor: AppTheme.success,
      borderRadius: 50.0,
      // barBlur: 0.0,
      // overlayBlur: 5.0,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      snackPosition: SnackPosition.TOP,
      mainButton: TextButton(
          onPressed: () {
            Get.back(); // Cerrar el SnackBar
          },
          child: Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      bottomLeft: Radius.circular(35),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: AppTheme.white,
                  )))),
    ).show();
  } else {
    showDialog(
        // The user CANNOT close this dialog by pressing outsite it
        //barrierDismissible: false,
        context: Get.context!,
        builder: (context) {
          return CupertinoAlertDialog(
            // shape: ShapeBorder.lerp(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)), 1),
            // The background color
            title: Center(child: Text('error'.tr, style: AppTheme.containText.copyWith(color: AppTheme.black))),
            content: Text(
              text,
              textAlign: TextAlign.center,
              style: AppTheme.containText.copyWith(color: AppTheme.nearlyBlack),
            ),
            actions: [
              TextButton(
                child: Center(
                  child: Text(
                    'aceptar'.tr,
                    style: AppTheme.containText.copyWith(color: AppTheme.nearlyBlack),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
              )
            ],
          );
        });
  }
}
