import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/controllers/index_controller.dart';
import 'package:idatos_celulares/utils/app_bar.dart';
import 'package:idatos_celulares/utils/app_theme.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: IndexController(),
      id: 'detail',
      builder: (_) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
              title: 'detalles',
              arrowBack: true,
            ),
            backgroundColor: AppTheme.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (_.isLoadingDetails)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        children: [
                          SizedBox(
                              height: Get.height - MediaQuery.of(context).padding.top - 50,
                              width: Get.width,
                              child: ListView.builder(
                                itemCount: _.detail.keys.length,
                                itemBuilder: (context, index) {
                                  String formatTitle(String text) {
                                    return text
                                        .replaceFirst(RegExp(r'^gsm', caseSensitive: false), '')
                                        .replaceAllMapped(RegExp(r'(?=[A-Z])'), (match) => ' ')
                                        .trim();
                                  }

                                  String key = _.detail.keys.elementAt(index);
                                  var value = _.detail[key];

                                  if (value is Map) {
                                    return ExpansionTile(
                                      title: Text(formatTitle(key)),
                                      children: value.entries.map<Widget>((entry) {
                                        return ListTile(
                                          title: Text(formatTitle(entry.key)),
                                          subtitle: Text(entry.value.toString()),
                                        );
                                      }).toList(),
                                    );
                                  }

                                  if (value is List) {
                                    return ExpansionTile(
                                      title: Text(formatTitle(key)),
                                      children: value.map<Widget>((item) {
                                        return ListTile(
                                          title: Text(formatTitle(item.toString())),
                                        );
                                      }).toList(),
                                    );
                                  }

                                  return ListTile(
                                    title: Text(formatTitle(key)),
                                    subtitle: Text(value.toString()),
                                  );
                                },
                              )),
                          Positioned(
                              bottom: 10,
                              right: 0,
                              left: 0,
                              child: InkWell(
                                onTap: () {
                                  _.getProductListing();
                                  Get.toNamed('/product_listing_screen');
                                },
                                child: Center(
                                    child: Container(
                                  height: 50,
                                  width: Get.width * 0.55,
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
                                          'Buscar producto',
                                          style: AppTheme.containText,
                                        ),
                                      ],
                                    )),
                                  ),
                                )),
                              ))
                        ],
                      )
              ],
            ));
      },
    );
  }
}
