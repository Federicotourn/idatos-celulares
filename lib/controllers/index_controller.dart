import 'package:get/get.dart';
import 'package:idatos_celulares/models/brand_model.dart';
import 'package:idatos_celulares/models/models_model.dart';
import 'package:idatos_celulares/services/index_service.dart';

class IndexController extends GetxController {
  final indexService = Get.find<IndexService>();

  List<Brand> brands = [];
  List<Model> models = [];
  Map<String, dynamic> detail = {};
  Map<String, dynamic> productListing = {};
  List<dynamic> results = [];
  bool isLoading = false;
  bool isLoadingModels = false;
  bool isLoadingDetails = false;
  bool isLoadingListing = false;

  String brandSelected = '';
  String modelSelected = '';

  @override
  void onInit() {
    getBrands();
    super.onInit();
  }

  void getBrands() async {
    isLoading = true;
    brands = await indexService.getBrands();
    isLoading = false;
    update(['home']);
  }

  void getModel() async {
    isLoadingModels = true;
    models = await indexService.getModelsByBrand(brandSelected);
    isLoadingModels = false;
    update(['models']);
  }

  void getSpecificationsByBrandAndModel() async {
    isLoadingDetails = true;
    detail = await indexService.getSpecificationsByBrandAndModel(brandSelected, modelSelected);
    isLoadingDetails = false;
    update(['detail']);
  }

  void getProductListing() async {
    isLoadingListing = true;
    productListing = await indexService.getProductsList(brandSelected, modelSelected);
    var selectedWords = modelSelected.split(' ');
    List<dynamic> resultsObtained = productListing['results'];
    results = resultsObtained.where((item) {
      return selectedWords.every((word) => item['title'].toLowerCase().contains(word.toLowerCase()));
    }).toList();
    isLoadingListing = false;
    update(['products']);
  }
}
