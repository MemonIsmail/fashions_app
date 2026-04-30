
class ProductModel {
  final int id;
  final String brand;
  final String productName;
  final String productImage;
  final String price;
  final String category;
  final String description;

  ProductModel({
    required this.id,
    required this.brand,
    required this.productName,
    required this.productImage,
    required this.price,
    required this.category,
    required this.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      id: json['id'] ?? 0,
      brand: json['brand'] ?? '',
      productName: json['productName'] ?? '',
      productImage: json['productImage'] ?? '',
      price: json['price'] ?? '',
      category: json['category'] ?? '',
      description: json['description'] ?? ''
    );
  }

  Map<String, dynamic> toJson(ProductModel product){
    return{
      'id': product.id,
      'brand': product.brand,
      'productName': product.productName,
      'productImage': product.productImage,
      'price': product.price,
      'category': product.category,
      'description': product.description
    };
  }
}