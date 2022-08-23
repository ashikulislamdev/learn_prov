class Card {
  late final int id;
  final String? productId;
  final String? productName;
  final int? productPrice;
  final int? initialPrice;
  final int? quantity;
  final String? unitTag;
  final String? image;
  Card({
    required this.id,
    this.productId,
    this.productName,
    this.productPrice,
    this.initialPrice,
    this.quantity,
    this.unitTag,
    this.image,
  });

  Card.fromMap(Map<dynamic, dynamic> resource) :
  id = resource['id'],
  productId = resource['productId'],
  productName = resource['productName'],
  productPrice = resource['productPrice'],
  initialPrice = resource['initialPrice'],
  quantity = resource['quantity'],
  unitTag = resource['unitTag'],
  image= resource['image'];
  

  Map<String, Object?> productToMap(){
    return {
      'id' : id,
      'productId' : productId,
      'productName' : productName,
      'productPrice' : productPrice,
      'initialPrice' : initialPrice,
      'quantity' : quantity,
      'unitTag' : unitTag,
      'image' : image,
    };
  }
}
