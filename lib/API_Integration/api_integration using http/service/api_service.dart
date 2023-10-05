import 'package:project_june2/API_Integration/api_integration%20using%20http/model/product_model.dart';
import 'package:http/http.dart' as http;

class HttpService{
  static Future<List<ProductModel>> fetchProductus() async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200){
      var data = response.body;
      return productModelFromJson(data);
    }else{
      throw Exception();
    }

  }
}