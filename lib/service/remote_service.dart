import 'package:http/http.dart ' as http;
import 'package:shopx_getx/models/product.dart';

class RemoteServices{
  static var client = http.Client();
  
  static Future<List<Welcome>?> fetchProducts() async{
    var response = await client.get('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline' as Uri);
    if(response.statusCode==200){
      var jsonString = response.body;
    return  welcomeFromJson(jsonString);
    }else{
        return null;
    }

  }
  
}