import 'dart:convert';

import 'package:get/get.dart';
import 'package:idatos_celulares/models/brand_model.dart';
import 'package:http/http.dart' as http;
import 'package:idatos_celulares/models/models_model.dart';

class IndexService extends GetxService {
  final String apiUrl = 'https://mobile-phone-specs-database.p.rapidapi.com/gsm/all-brands';
  final String apiHost = 'mobile-phone-specs-database.p.rapidapi.com';
  final String apiKey = '624bae9e9dmshea08dc8af6ede4ep18b307jsn986d238fa017';

  Future<IndexService> init() async {
    return this;
  }

  Future<List<Brand>> getBrands() async {
    try {
      final Uri url = Uri.parse('https://mobile-phone-specs-database.p.rapidapi.com/gsm/all-brands');
      var headers = {
        'x-rapidapi-host': apiHost,
        'x-rapidapi-key': apiKey,
      };

      var response = await http.get(url, headers: headers);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Brand> brands = brandFromJson(response.body);
        return brands;
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<List<Model>> getModelsByBrand(String brandName) async {
    final String apiUrl = 'https://mobile-phone-specs-database.p.rapidapi.com/gsm/get-models-by-brandname/$brandName';

    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'x-rapidapi-host': apiHost,
          'x-rapidapi-key': apiKey,
        },
      );

      if (response.statusCode == 200) {
        List<Model> models = modelFromJson(response.body);
        return models;
      } else {
        return [];
      }
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  Future<Map<String, dynamic>> getSpecificationsByBrandAndModel(String brandName, String modelName) async {
    final String encodedBrandName = Uri.encodeComponent(brandName);
    final String encodedModelName = Uri.encodeComponent(modelName);

    final String apiUrl =
        'https://mobile-phone-specs-database.p.rapidapi.com/gsm/get-specifications-by-brandname-modelname/$encodedBrandName/$encodedModelName';

    try {
      final response = await http.get(
        Uri.parse(apiUrl),
        headers: {
          'x-rapidapi-host': apiHost,
          'x-rapidapi-key': apiKey,
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return {};
      }
    } catch (e) {
      return {};
    }
  }

  Future<Map<String, dynamic>> getProductsList(String brandName, String modelName) async {
    final String encodedBrandName = Uri.encodeComponent(brandName);
    final String encodedModelName = Uri.encodeComponent(modelName);

    final String apiUrl = 'https://api.mercadolibre.com/sites/MLU/search?q=$encodedBrandName%20$encodedModelName&limit=20&domain_id=MLU-CELLPHONES';

    try {
      final response = await http.get(
        Uri.parse(apiUrl),
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return {};
      }
    } catch (e) {
      return {};
    }
  }
}
