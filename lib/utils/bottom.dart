import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/utils/app_theme.dart';

class Bottom extends StatelessWidget {
  final Color letterColor;
  final Color bottomColor;
  final String text;
  const Bottom({
    super.key,
    required this.letterColor,
    required this.bottomColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(color: bottomColor, borderRadius: const BorderRadius.all(Radius.circular(30))),
        width: Get.width,
        height: Get.height * 0.07,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: AppTheme.containText.copyWith(color: letterColor)),
                Icon(
                  Icons.arrow_outward_outlined,
                  size: 20,
                  color: letterColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DoubleBottom extends StatelessWidget {
  final Color letterColor1;
  final Color bottomColor1;
  final String text1;
  final Function()? function1;
  final Color letterColor2;
  final Color bottomColor2;
  final String text2;
  final Function()? function2;
  const DoubleBottom({
    super.key,
    required this.letterColor1,
    required this.bottomColor1,
    required this.text1,
    required this.letterColor2,
    required this.bottomColor2,
    required this.text2,
    this.function1,
    this.function2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: function1,
            child: Container(
              decoration: BoxDecoration(color: bottomColor1, borderRadius: const BorderRadius.all(Radius.circular(30))),
              width: Get.width * 0.4,
              height: Get.height * 0.07,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(text1, style: AppTheme.containText.copyWith(color: letterColor1)),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: function2,
            child: Container(
              decoration: BoxDecoration(color: bottomColor2, borderRadius: const BorderRadius.all(Radius.circular(30))),
              width: Get.width * 0.4,
              height: Get.height * 0.07,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(text2, style: AppTheme.containText.copyWith(color: letterColor2)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
