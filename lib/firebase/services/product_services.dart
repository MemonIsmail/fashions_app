
import '../../model/product_model.dart';
import '../firebase_client.dart';


class ProductServices{
  final FirebaseClient _client = FirebaseClient();

  static final ProductServices _instance = ProductServices._private();

  ProductServices._private();

  factory ProductServices() => _instance;

  Future<String> addProduct(ProductModel product) async {

    try{

      final result = await _client.addRequest(
        collectionName: 'products',
        customId: '${product.id}',
        data: product.toJson(product)
      );

      if(result.containsKey('error')){
        return 'Some error occurred';
      }
      else{
        return 'Product added Successfully';
      }
    }  catch(e){
      return 'Some error occurred, please try again later..';
    }
  }
  Future<List<ProductModel>> getAllProducts() async{
    try{
      final result = await _client.getAllRequest(collectionName: 'tasks');

      if(result is Map && result.containsKey('error')){
        throw Exception('Some error Occurred..');
      }
      final List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(result);
      final List<ProductModel> allProducts = [];

      for(var product in data){
        allProducts.add(ProductModel.fromJson(product));
      }
      return allProducts;
    } catch(e){
      throw Exception(e.toString());
    }
  }
}