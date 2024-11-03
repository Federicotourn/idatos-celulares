import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

void Loading({bool barrierDismissible = false}) async {
  showDialog(
      barrierDismissible: barrierDismissible,
      context: Get.context!,
      builder: (BuildContext bc) {
        return WillPopScope(
            onWillPop: () async => barrierDismissible,
            child: Dialog(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                  child: const Center(
                    child: RiveAnimation.asset(
                      'assets/disc_loading.riv',
                    ),
                  )),
            ));
      });
}
