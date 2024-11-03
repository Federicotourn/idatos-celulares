import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/controllers/index_controller.dart';
import 'package:idatos_celulares/utils/app_bar.dart';
import 'package:idatos_celulares/utils/app_theme.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: IndexController(),
      id: 'home',
      builder: (_) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
              arrowBack: null,
              title: 'marcas',
            ),
            backgroundColor: AppTheme.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (_.isLoading)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        children: [
                          SizedBox(
                            height: Get.height - MediaQuery.of(context).padding.top - 50,
                            width: Get.width,
                            child: ListView.builder(
                              itemCount: _.brands.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    _.brandSelected = _.brands[index].brandValue;
                                    _.update(['home']);
                                  },
                                  child: Container(
                                    height: 40,
                                    color: (_.brandSelected == _.brands[index].brandValue) ? AppTheme.bluePrimary : AppTheme.white,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          _.brands[index].brandValue,
                                          style: AppTheme.containText
                                              .copyWith(color: (_.brandSelected == _.brands[index].brandValue) ? AppTheme.white : AppTheme.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          (_.brandSelected != '')
                              ? Positioned(
                                  bottom: 10,
                                  right: 0,
                                  left: 0,
                                  child: Center(
                                      child: InkWell(
                                    onTap: () {
                                      _.getModel();
                                      Get.toNamed('/models_screen');
                                    },
                                    child: Container(
                                      height: 50,
                                      width: Get.width * 0.5,
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
                                              'Buscar modelos',
                                              style: AppTheme.containText,
                                            ),
                                          ],
                                        )),
                                      ),
                                    ),
                                  )))
                              : Container()
                        ],
                      )
              ],
            ));
      },
    );
  }
}
