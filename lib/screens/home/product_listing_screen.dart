import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idatos_celulares/controllers/index_controller.dart';
import 'package:idatos_celulares/utils/app_bar.dart';
import 'package:idatos_celulares/utils/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductListingScreen extends StatelessWidget {
  const ProductListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: IndexController(),
      id: 'products',
      builder: (_) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
              title: 'Productos',
              arrowBack: true,
            ),
            backgroundColor: AppTheme.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (_.isLoadingListing)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).padding.top + 60,
                              ),
                              SizedBox(
                                height: 40,
                                child: Image.asset(
                                  'assets/mercado_libre.png',
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: Get.height - 150,
                                width: Get.width,
                                child: ListView.builder(
                                  padding: const EdgeInsets.all(0),
                                  itemCount: _.results.length,
                                  itemBuilder: (context, index) {
                                    var product = _.results[index];
                                    String titleText;
                                    try {
                                      titleText = (product['attributes'].firstWhere((element) => element['id'] == 'BRAND')['value_name'] ?? '') +
                                          ' ' +
                                          (product['attributes'].firstWhere((element) => element['id'] == 'MODEL')['value_name'] ?? '') +
                                          ' ' +
                                          (product['attributes'].firstWhere((element) => element['id'] == 'MAIN_COLOR')['value_name'] ?? '');

                                      if (titleText.trim().isEmpty) {
                                        throw Exception("Incomplete attributes");
                                      }
                                    } catch (e) {
                                      titleText = product['title'];
                                    }
                                    return ExpansionTile(
                                      title: Text(titleText),
                                      children: [
                                        ListTile(
                                          title: Text('ID:'),
                                          subtitle: Text(product['id']),
                                        ),
                                        ListTile(
                                          title: Text('Precio:'),
                                          subtitle: Text('${product['currency_id']} ${product['price']}'),
                                        ),
                                        ListTile(
                                          title: Text('Condición:'),
                                          subtitle: Text(product['condition']),
                                        ),
                                        ListTile(
                                          onTap: () async => await launchUrl(
                                            Uri.parse(product['permalink']),
                                            mode: LaunchMode.externalApplication,
                                          ),
                                          title: Text(
                                            'Enlace:',
                                          ),
                                          subtitle: Text(
                                            product['permalink'],
                                            style: AppTheme.textLink,
                                          ),
                                        ),
                                        ExpansionTile(
                                          title: Text('Atributos:'),
                                          children: (product['attributes'] as List).map<Widget>((attribute) {
                                            return ListTile(
                                              title: Text(attribute['name']),
                                              subtitle: Text(attribute['value_name'] ?? 'N/A'),
                                            );
                                          }).toList(),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
              ],
            ));
      },
    );
  }
}
