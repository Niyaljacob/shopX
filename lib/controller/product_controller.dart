import 'package:get/get.dart';
import 'package:shopx_getx/models/product.dart';
import 'package:shopx_getx/service/remote_service.dart';

class ProductController extends GetxController {
  var productList = <Welcome>[].obs;
  void fetchProduct()async{
    var products=await RemoteServices.fetchProducts();
    if(products != null){
      productList.value=products;
    }
  }
}