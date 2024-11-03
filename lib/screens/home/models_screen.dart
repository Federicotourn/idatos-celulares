import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/controllers/index_controller.dart';
import 'package:idatos_celulares/utils/app_bar.dart';
import 'package:idatos_celulares/utils/app_theme.dart';

class ModelsScreen extends StatelessWidget {
  const ModelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: IndexController(),
      id: 'models',
      builder: (_) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
              title: 'modelos',
              arrowBack: true,
            ),
            backgroundColor: AppTheme.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (_.isLoadingModels)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        children: [
                          SizedBox(
                            height: Get.height - MediaQuery.of(context).padding.top - 50,
                            width: Get.width,
                            child: ListView.builder(
                              itemCount: _.models.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    _.modelSelected = _.models[index].modelValue;
                                    _.update(['models']);
                                  },
                                  child: Container(
                                    height: 40,
                                    color: (_.modelSelected == _.models[index].modelValue) ? AppTheme.bluePrimary : AppTheme.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          _.models[index].modelValue,
                                          style: AppTheme.containText
                                              .copyWith(color: (_.modelSelected == _.models[index].modelValue) ? AppTheme.white : AppTheme.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          (_.modelSelected != '')
                              ? Positioned(
                                  bottom: 10,
                                  right: 0,
                                  left: 0,
                                  child: InkWell(
                                    onTap: () {
                                      _.getSpecificationsByBrandAndModel();
                                      Get.toNamed('/details_screen');
                                    },
                                    child: Center(
                                        child: Container(
                                      height: 50,
                                      width: Get.width * 0.7,
                                      decoration: BoxDecoration(
                                        color: AppTheme.bluePrimary,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                        child: Center(
                                            child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            const Icon(Icons.search, color: AppTheme.white),
                                            Text(
                                              'Buscar especificaciones',
                                              style: AppTheme.containText,
                                            ),
                                          ],
                                        )),
                                      ),
                                    )),
                                  ))
                              : Container()
                        ],
                      )
              ],
            ));
      },
    );
  }
}
